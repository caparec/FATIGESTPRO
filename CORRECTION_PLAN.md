# 🚀 PLAN DE CORRECTION FATIGESTPRO — Juin 2026

## Résumé
Ce document traduit l'audit de sécurité/qualité en **tâches concrètes** ordonnées par priorité et impact.

---

## 🔴 PHASE 1 — DÉMARRAGE (Critiques — 2h)

### ✅ TÂCHE 1.1 : Corriger les chemins d'import (URGENT — démarrage impossible)
**Problème** : `main.py` importe `from routes.auth_routes import router` mais le dossier `routes/` n'existe pas → crash au startup.

**Action** :
```bash
mkdir -p routes
touch routes/__init__.py
```

**Fichier** : `routes/auth_routes.py` (créer)
```python
from fastapi import APIRouter, HTTPException, Cookie, Header, Depends
from pydantic import BaseModel
from typing import Optional
import os
import jwt
from datetime import datetime, timedelta
from passlib.context import CryptContext

router = APIRouter()
pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")
SECRET_KEY = os.getenv("FATIGEST_SECRET", "change-me-in-production-32chars!")
ALGORITHM = "HS256"

class LoginRequest(BaseModel):
    username: str
    password: str

@router.post("/api/login")
def login(data: LoginRequest):
    # Vérification basique pour démarrage
    if data.username != "admin" or data.password != "admin123":
        raise HTTPException(status_code=401, detail="Identifiants incorrects")
    
    token = jwt.encode(
        {"sub": data.username, "exp": datetime.utcnow() + timedelta(hours=8)},
        SECRET_KEY,
        algorithm=ALGORITHM
    )
    
    # Retourner token (sera passer aux HttpOnly cookies en Phase 2)
    return {"access_token": token, "token_type": "bearer"}

def require_auth(access_token: Optional[str] = Cookie(None)) -> str:
    if not access_token:
        raise HTTPException(status_code=401, detail="Authentification requise")
    try:
        payload = jwt.decode(access_token, SECRET_KEY, algorithms=[ALGORITHM])
        return payload.get("sub")
    except:
        raise HTTPException(status_code=401, detail="Token invalide")
```

**Fichiers à créer** (stub minimum) :
- `routes/clients.py` — endpoints `/api/clients`
- `routes/articles.py` — endpoints `/api/articles`
- `routes/factures.py` — endpoints `/api/factures`
- `routes/reglements.py` — endpoints `/api/reglements`
- `routes/devis.py` — endpoints `/api/devis`
- `routes/abonnements.py` — endpoints `/api/abonnements`
- `routes/rapports.py` — endpoints `/api/rapports`
- `routes/stats.py` — endpoints `/api/stats`
- `routes/backup.py` — endpoints `/api/backup`

Chaque dossier minimale :
```python
from fastapi import APIRouter
router = APIRouter()

@router.get("/api/clients")
def list_clients():
    return []
```

**Temps estimé** : 30 min

---

### ✅ TÂCHE 1.2 : Générer une vraie clé JWT + configurer `.gitignore`
**Problème** : Clé secrète en clair, identique pour tous les déploiements.

**Actions** :

1) Générer une vraie clé (64 caractères) :
   ```bash
   python -c "import secrets; print(secrets.token_hex(32))"
   ```
   Résultat exemple : `a1f9c7e2d5b3f8c1a9e6d4b2f7c3e1a0d5b8f9e2c4a6d8f1b3e5c7a9d2b4f6`

2) Mettre à jour `.env` :
   ```
   FATIGEST_SECRET=a1f9c7e2d5b3f8c1a9e6d4b2f7c3e1a0d5b8f9e2c4a6d8f1b3e5c7a9d2b4f6
   ALLOWED_ORIGINS=http://127.0.0.1:8000
   ```

3) Ajouter `.env` au `.gitignore` (⚠ AVANT de commiter) :
   ```
   .env
   __pycache__/
   *.db
   *.log
   *.pid
   *.pyc
   .DS_Store
   *.zip
   node_modules/
   ```

**Temps estimé** : 5 min

---

### ✅ TÂCHE 1.3 : Restreindre CORS en production
**Problème** : `allow_origins=["*"]` accepte toutes les requêtes cross-origin.

**Modifier** : `config.py`
```python
import os
from pathlib import Path

BASE_DIR = Path(__file__).parent
DB_PATH = os.getenv("DB_PATH", str(BASE_DIR / "fatigest_moderne.db"))
LOG_FILE = os.getenv("LOG_FILE", str(BASE_DIR / "server.log"))

# CORS
ALLOWED_ORIGINS = os.getenv("ALLOWED_ORIGINS", "http://127.0.0.1:8000").split(",")

# JWT
ACCESS_TOKEN_EXPIRE_MINUTES = int(os.getenv("TOKEN_EXPIRE", "60"))  # Réduit de 480 à 60
FATIGEST_SECRET = os.getenv("FATIGEST_SECRET", "change-me-in-production-32chars!")
```

**Temps estimé** : 5 min

---

## 🟡 PHASE 2 — SÉCURITÉ RÉSEAU (4h)

### ✅ TÂCHE 2.1 : Passer aux `HttpOnly` cookies pour JWT
**Problème** : Token exposé via `localStorage` (vulnérable à XSS).

**Modifier** : `routes/auth_routes.py`
```python
from fastapi.responses import JSONResponse

@router.post("/api/login")
def login(data: LoginRequest):
    if data.username != "admin" or data.password != "admin123":
        raise HTTPException(status_code=401, detail="Identifiants incorrects")
    
    token = jwt.encode(
        {"sub": data.username, "exp": datetime.utcnow() + timedelta(minutes=60)},
        SECRET_KEY,
        algorithm=ALGORITHM
    )
    
    resp = JSONResponse({"ok": True, "message": "Connecté"})
    resp.set_cookie(
        "access_token", 
        token,
        httponly=True,      # ⭐ Empêche JS d'accéder
        secure=False,       # secure=True en HTTPS
        samesite="strict",  # Contrôle le cross-site
        max_age=3600        # 1 heure
    )
    return resp
```

**Modifier** : `routes/auth_routes.py` — décoder depuis le cookie
```python
from fastapi import Request

def require_auth(request: Request) -> str:
    token = request.cookies.get("access_token")
    if not token:
        raise HTTPException(status_code=401, detail="Authentification requise")
    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        return payload.get("sub")
    except Exception as e:
        raise HTTPException(status_code=401, detail=f"Token invalide: {str(e)}")
```

**Modifier** : `index.html` — SUPPRIMER localStorage, utiliser les cookies natifs
```javascript
// ❌ À supprimer partout :
localStorage.setItem('access_token', data.access_token)
const token = localStorage.getItem('access_token')

// ✅ Les cookies sont envoyés automatiquement par le navigateur
// Aucun code JS nécessaire pour les HttpOnly cookies
```

**Temps estimé** : 1.5h

---

### ✅ TÂCHE 2.2 : Ajouter rate-limiting sur `/api/login`
**Problème** : Aucune protection contre force brute (10 tentatives/seconde possible).

**Installer** :
```bash
pip install slowapi
```

**Modifier** : `main.py`
```python
from slowapi import Limiter
from slowapi.util import get_remote_address

limiter = Limiter(key_func=get_remote_address)

# ⚠ Ajouter après app = FastAPI(...)
app.state.limiter = limiter
app.add_exception_handler(slowapi.error.RateLimitExceeded, slowapi._rate_limit_exceeded_handler)
```

**Modifier** : `routes/auth_routes.py`
```python
from slowapi import Limiter
from slowapi.util import get_remote_address

limiter = Limiter(key_func=get_remote_address)

@router.post("/api/login")
@limiter.limit("5/minute")  # Max 5 tentatives/minute
def login(request: Request, data: LoginRequest):
    # ...
```

**Temps estimé** : 30 min

---

### ✅ TÂCHE 2.3 : Ajouter alerte mot de passe par défaut
**Problème** : Admin reste connecté avec `admin123` sans avertissement.

**Modifier** : `routes/auth_routes.py`
```python
@router.post("/api/login")
@limiter.limit("5/minute")
def login(request: Request, data: LoginRequest):
    if data.username != "admin" or data.password != "admin123":
        raise HTTPException(status_code=401, detail="Identifiants incorrects")
    
    token = jwt.encode(
        {"sub": data.username, "exp": datetime.utcnow() + timedelta(minutes=60)},
        SECRET_KEY,
        algorithm=ALGORITHM
    )
    
    resp = JSONResponse({
        "ok": True,
        "default_password": data.password == "admin123"  # ⭐ Signal front
    })
    resp.set_cookie("access_token", token, httponly=True, secure=False, samesite="strict", max_age=3600)
    return resp
```

**Modifier** : `index.html` — après login
```javascript
async function login() {
    const r = await fetch('/api/login', {method: 'POST', ...});
    const data = await r.json();
    
    if (data.default_password) {
        showAlert("⚠️ ALERTE SÉCURITÉ : Vous utilisez le mot de passe par défaut (admin123). Changez-le immédiatement !", "warning");
    }
    loadData();
}
```

**Temps estimé** : 30 min

---

## 🟡 PHASE 3 — QUALITÉ DB (3h)

### ✅ TÂCHE 3.1 : Ajouter indexes SQLite
**Problème** : Recherches lentes sur grandes bases (10 000+ clients).

**Modifier** : `db.py` dans `init_db()`
```python
def init_db():
    conn = get_conn()
    cursor = conn.cursor()
    
    # Créer les tables (existant)
    # ...
    
    # ⭐ Ajouter les indexes
    indexes = [
        "CREATE INDEX IF NOT EXISTS idx_cli_raso  ON p_cli(cli_raso)",
        "CREATE INDEX IF NOT EXISTS idx_cli_ice   ON p_cli(cli_ice)",
        "CREATE INDEX IF NOT EXISTS idx_fac_dat   ON m_fac(fac_dat DESC)",
        "CREATE INDEX IF NOT EXISTS idx_fac_cli   ON m_fac(fac_cli_cod)",
        "CREATE INDEX IF NOT EXISTS idx_fac_etat  ON m_fac(fac_etat)",
        "CREATE INDEX IF NOT EXISTS idx_reg_dat   ON m_reg(reg_dat DESC)",
        "CREATE INDEX IF NOT EXISTS idx_reg_cli   ON m_reg(reg_cli_cod)",
    ]
    for sql in indexes:
        cursor.execute(sql)
    
    conn.commit()
```

**Temps estimé** : 30 min

---

### ✅ TÂCHE 3.2 : Valider les montants côté serveur
**Problème** : Montants négatifs acceptés (`fac_mt_ht: -100`).

**Modifier** : `models.py`
```python
from pydantic import BaseModel, Field

class FactureSchema(BaseModel):
    fac_cli_cod: str
    fac_mt_ht: float = Field(..., gt=0, description="Montant HT > 0")
    fac_tva: float = Field(20.0, ge=0, le=100, description="TVA 0-100%")

class ReglementSchema(BaseModel):
    reg_cli_cod: str
    reg_dat: str
    reg_mt: float = Field(..., gt=0, description="Montant > 0")
    reg_mode: str
    reg_ref: str
```

**Temps estimé** : 20 min

---

### ✅ TÂCHE 3.3 : Rotation des logs
**Problème** : `server.log` grandit indéfiniment (risque saturation disque).

**Déjà configuré** dans `main.py` (lignes 12-17) ✅

**Vérifier** :
```python
from logging.handlers import RotatingFileHandler

handler = RotatingFileHandler(LOG_FILE, maxBytes=5*1024*1024, backupCount=3)
# ^ Logs rotent à 5 MB, garde 3 anciens fichiers
```

**Temps estimé** : 0 min (déjà fait)

---

## 🔵 PHASE 4 — STRUCTURE (1-2 jours)

### ✅ TÂCHE 4.1 : Supprimer `gestioncom.py` (source de confusion)
**Problème** : Génère entièrement le code à chaque run → désynchronisation.

**Action** :
```bash
rm gestioncom.py
```

**Remplacer par** : `scripts/setup.sh` (installation simple)
```bash
#!/bin/bash
pip install -r requirements.txt
python -c "from db import init_db; init_db()"
echo "✅ FATIGESTPRO prêt !"
```

**Temps estimé** : 5 min

---

### ✅ TÂCHE 4.2 : Extraire le JS de `index.html`
**Problème** : 3000+ lignes JS dans un seul `<script>` (pas de cache, illisible).

**Action** :
1. Créer `static/app.js` → extraire le JavaScript
2. Créer `static/styles.css` → extraire les styles inlignés
3. Simplifier `index.html` → 200 lignes

**Modifier** : `main.py`
```python
from fastapi.staticfiles import StaticFiles

app.mount("/static", StaticFiles(directory="static"), name="static")
```

**Temps estimé** : 1–2h

---

### ✅ TÂCHE 4.3 : Ajouter tests automatisés
**Problème** : `pytest` en `requirements.txt` mais 0 test.

**Créer** : `tests/test_auth.py`
```python
from fastapi.testclient import TestClient
from main import app

client = TestClient(app)

def test_login_success():
    r = client.post("/api/login", json={"username": "admin", "password": "admin123"})
    assert r.status_code == 200
    assert "default_password" in r.json()

def test_login_fail():
    r = client.post("/api/login", json={"username": "admin", "password": "wrong"})
    assert r.status_code == 401

def test_rate_limit():
    for i in range(6):  # 5 autorisées
        r = client.post("/api/login", json={"username": "admin", "password": "wrong"})
    assert r.status_code == 429  # Too Many Requests
```

**Exécuter** :
```bash
pytest -v
```

**Temps estimé** : 2–4h pour couverture complète

---

## ✅ CHECKLIST DE DÉPLOIEMENT

- [ ] Dossier `routes/` créé + tous les imports résolus
- [ ] `.env` utilisé avec vraie clé secrète + `.gitignore` à jour
- [ ] Cookies HttpOnly activés + localStorage supprimé
- [ ] Rate-limiting sur `/api/login`
- [ ] Alerte mot de passe par défaut active
- [ ] Indexes SQLite créés
- [ ] Validation Pydantic stricte (montants > 0)
- [ ] `gestioncom.py` supprimé
- [ ] Tests de base passent : `pytest -v`
- [ ] Application démarre sans erreur : `python main.py`

---

## 📅 TIMING GLOBAL

| Phase | Durée | Impact |
|-------|-------|--------|
| **Phase 1** (Démarrage) | **2h** | 🔴 Critique |
| **Phase 2** (Sécurité) | **4h** | 🔴 Critique |
| **Phase 3** (Qualité DB) | **3h** | 🟡 Important |
| **Phase 4** (Structure) | **1-2 j** | 🔵 Amélioration |
| **TOTAL** | **2-3 jours** | ✅ Production-ready |

---

**Prochaines étapes** : Commencer par **Phase 1 TÂCHE 1.1** pour démarrer l'application.
