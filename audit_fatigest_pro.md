# Rapport d'audit — FATIGEST Pro

> Analyse statique du code source · 11 fichiers examinés  
> Date : juin 2026

---

## Résumé exécutif

| Catégorie | Nombre |
|---|---|
| 🔴 Critiques (sécurité / stabilité) | 5 |
| 🟡 Avertissements (qualité / robustesse) | 7 |
| 🔵 Améliorations recommandées | 8 |

Le projet dispose d'une base architecturale solide (FastAPI, modèles Pydantic, génération PDF via ReportLab, interface complète). Les problèmes identifiés concernent principalement la gestion des secrets, l'authentification JWT et plusieurs lacunes de robustesse.

---

## 🔴 Critiques — sécurité & stabilité

### 1. Token JWT exposé via `localStorage` (XSS)

**Fichiers :** `index.html:2340`, `auth.py`

Le token JWT est stocké dans `localStorage`, accessible à tout script injecté (XSS). Un attaquant peut le voler sans interaction utilisateur.

**Correction :** Passer aux `HttpOnly` cookies côté serveur.

```python
# auth_routes.py — route /api/login
@router.post("/api/login")
def login(data: LoginRequest):
    # ... vérification mot de passe ...
    token = create_token(user.usr_login)
    resp = JSONResponse({"ok": True})
    resp.set_cookie(
        "access_token", token,
        httponly=True,
        secure=False,       # secure=True en HTTPS
        samesite="strict",
        max_age=28800
    )
    return resp
```

```python
# Lire le cookie dans require_auth
async def require_auth(
    authorization: Optional[str] = Header(None),
    access_token: Optional[str] = Cookie(None)
) -> str:
    token = access_token or (
        authorization.split(" ", 1)[1] if authorization else None
    )
    if not token:
        raise HTTPException(401, "Authentification requise")
    return decode_token(token)
```

Côté `index.html` : supprimer tout usage de `localStorage` pour le token.

---

### 2. Clé secrète JWT en clair dans `.env` commité

**Fichiers :** `.env`, `config.py`

La valeur `FATIGEST_SECRET=change-me-in-production-32chars!` indique que le secret n'a jamais été changé. Si le dépôt est public ou partagé, tous les tokens peuvent être forgés.

**Correction :**

```bash
# Générer une clé solide
python -c "import secrets; print(secrets.token_hex(32))"
```

Ajouter immédiatement `.env` au `.gitignore` :

```
.env
__pycache__/
*.db
*.log
*.pid
*.pyc
```

---

### 3. Pattern d'injection SQL via f-string dans `db.py`

**Fichiers :** `db.py:10–25`

```python
# ⚠ Dangereux si étendu à des données utilisateur
cursor.execute(f"ALTER TABLE p_cli ADD COLUMN {col_name} {col_type}")
```

Les valeurs sont codées en dur ici, mais le pattern est risqué si une route reçoit `col_name` depuis l'extérieur. Toujours utiliser des paramètres liés (`?`) pour les données utilisateur.

---

### 4. Dossier `routes/` manquant → crash au démarrage

**Fichiers :** `main.py:13–22`

`main.py` importe `from routes.auth_routes import router` mais aucun fichier `routes/` n'est fourni dans le projet. Le serveur crashe immédiatement au démarrage.

**Correction :** Créer le dossier `routes/` avec au minimum :

```
routes/
  __init__.py
  auth_routes.py
  client_routes.py
  facture_routes.py
  reglement_routes.py
```

---

### 5. CORS trop permissif (`allow_origins=["*"]`)

**Fichiers :** `main.py:14`

En production, n'importe quel domaine peut envoyer des requêtes cross-origin vers l'API.

**Correction :**

```python
# main.py
ALLOWED_ORIGINS = os.getenv("ALLOWED_ORIGINS", "http://127.0.0.1:8000").split(",")

app.add_middleware(
    CORSMiddleware,
    allow_origins=ALLOWED_ORIGINS,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
```

---

## 🟡 Avertissements — qualité & robustesse

### 6. Connexions SQLite non poolées

**Fichiers :** `db.py`

`get_conn()` crée une nouvelle connexion à chaque appel. Sous charge, cela génère de nombreuses ouvertures de fichier et des verrouillages.

**Correction :** Utiliser un singleton threadlocal :

```python
import threading

_local = threading.local()

def get_conn():
    if not hasattr(_local, "conn") or _local.conn is None:
        _local.conn = sqlite3.connect(DB_PATH, check_same_thread=False)
        _local.conn.row_factory = sqlite3.Row
    return _local.conn
```

---

### 7. Duplication massive dans `gestioncom.py`

**Fichiers :** `gestioncom.py`

Ce fichier recrée entièrement `main.py` et `index.html` par génération de chaîne. Il est inutile si le projet est structuré correctement et représente un risque de désynchronisation.

**Correction :** Supprimer ce fichier. Le remplacer par un script d'installation simple :

```bash
# install.sh
pip install -r requirements.txt
python -c "from db import init_db; init_db()"
```

---

### 8. Durée de session JWT de 8h sans révocation possible

**Fichiers :** `config.py:10`

Un token valide 480 minutes sans blacklist ni refresh token. Si volé, l'attaquant dispose de 8h d'accès complet.

**Correction :** Réduire à 60 minutes et ajouter un endpoint de refresh :

```python
# config.py
ACCESS_TOKEN_EXPIRE_MINUTES = int(os.getenv("TOKEN_EXPIRE", "60"))
```

---

### 9. Pas de validation des valeurs négatives côté serveur

**Fichiers :** `models.py`

Les champs comme `fac_mt_ht` ou `reg_mt` peuvent recevoir des valeurs négatives sans erreur.

**Correction :**

```python
from pydantic import BaseModel, Field

class FactureSchema(BaseModel):
    fac_mt_ht: float = Field(0, ge=0, description="Montant HT >= 0")
    fac_tva:   float = Field(20.0, ge=0, le=100)

class ReglementSchema(BaseModel):
    reg_mt: float = Field(..., gt=0, description="Montant > 0")
```

---

### 10. Logs écrits dans un fichier sans rotation

**Fichiers :** `config.py:7`, `main.py:8`

`server.log` grandit indéfiniment. Sur un serveur en production, il peut saturer le disque.

**Correction :**

```python
from logging.handlers import RotatingFileHandler

handler = RotatingFileHandler(
    LOG_FILE, maxBytes=5 * 1024 * 1024, backupCount=3
)
logging.basicConfig(
    handlers=[handler],
    level=logging.INFO,
    format="%(asctime)s %(levelname)s %(name)s: %(message)s"
)
```

---

### 11. Exceptions silencieuses en masse dans `init_db()`

**Fichiers :** `db.py:30–70`

Une dizaine de blocs `try/except pass` ignorent silencieusement toutes les erreurs de migration. Une migration ratée passe inaperçue.

**Correction :**

```python
# Remplacer chaque except pass par :
try:
    cursor.execute("ALTER TABLE m_fac ADD COLUMN fac_echeance TEXT DEFAULT '30 jours'")
except Exception as e:
    logger.debug("Migration ignorée (déjà existante ?) : %s", e)
```

---

### 12. Mot de passe admin par défaut `admin123` non forcé à changer

**Fichiers :** `.env`, `auth.py:ensure_admin_user`

Si l'admin initial n'est pas changé, le compte reste accessible avec un mot de passe trivial sans aucun avertissement.

**Correction :** Détecter et afficher une alerte au login :

```python
# auth.py
def check_default_password(plain: str) -> bool:
    return plain == "admin123"
```

```javascript
// index.html — après login réussi
if (data.default_password) {
    showAlert("⚠ Vous utilisez le mot de passe par défaut. Changez-le immédiatement.", "warning");
}
```

---

## 🔵 Améliorations recommandées

### 13. Ajouter des index SQLite sur les colonnes fréquentes

```python
# db.py — dans init_db()
indexes = [
    "CREATE INDEX IF NOT EXISTS idx_cli_raso  ON p_cli(cli_raso)",
    "CREATE INDEX IF NOT EXISTS idx_fac_dat   ON m_fac(fac_dat)",
    "CREATE INDEX IF NOT EXISTS idx_fac_etat  ON m_fac(fac_etat)",
    "CREATE INDEX IF NOT EXISTS idx_fac_cli   ON m_fac(fac_cli_cod)",
    "CREATE INDEX IF NOT EXISTS idx_reg_dat   ON m_reg(reg_dat)",
    "CREATE INDEX IF NOT EXISTS idx_reg_cli   ON m_reg(reg_cli_cod)",
]
for sql in indexes:
    cursor.execute(sql)
```

---

### 14. Cache des appels `/api/stats` côté client

Les logs montrent `/api/stats` appelé 10+ fois de suite. Mettre en cache 8 secondes :

```javascript
let _statsCache = null, _statsCacheTs = 0;

async function loadStats() {
    const now = Date.now();
    if (_statsCache && now - _statsCacheTs < 8000) {
        applyStats(_statsCache);
        return;
    }
    const s = await api('/api/stats');
    _statsCache = s;
    _statsCacheTs = now;
    applyStats(s);
}
```

---

### 15. Extraire le JavaScript de `index.html`

Plus de 3000 lignes de JS sont dans un seul `<script>`. Extraire en `static/app.js` pour bénéficier du cache navigateur et de la lisibilité.

```html
<!-- index.html -->
<script src="/static/app.js" defer></script>
```

```python
# main.py
from fastapi.staticfiles import StaticFiles
app.mount("/static", StaticFiles(directory="static"), name="static")
```

---

### 16. Ajouter des tests automatisés

`requirements.txt` inclut `pytest` et `httpx` mais aucun test n'existe. Exemple minimal :

```python
# tests/test_auth.py
from fastapi.testclient import TestClient
from main import app

client = TestClient(app)

def test_login_valid():
    r = client.post("/api/login", json={"username": "admin", "password": "admin123"})
    assert r.status_code == 200

def test_login_invalid():
    r = client.post("/api/login", json={"username": "admin", "password": "wrong"})
    assert r.status_code == 401

def test_clients_requires_auth():
    r = client.get("/api/clients")
    assert r.status_code == 401
```

---

### 17. Pagination strictement côté serveur

Le frontend charge `per_page=500` quand une recherche est active, chargeant potentiellement toutes les données. Imposer une limite maximale côté API :

```python
@router.get("/api/clients")
def list_clients(page: int = 1, per_page: int = 50, search: str = ""):
    per_page = min(per_page, 100)   # limite dure
    offset = (page - 1) * per_page
    # ...
```

---

### 18. Rate-limiting sur `/api/login`

Aucune protection contre la force brute. Utiliser `slowapi` :

```python
# main.py
from slowapi import Limiter, _rate_limit_exceeded_handler
from slowapi.util import get_remote_address

limiter = Limiter(key_func=get_remote_address)
app.state.limiter = limiter

# auth_routes.py
@router.post("/api/login")
@limiter.limit("5/minute")
async def login(request: Request, data: LoginRequest):
    ...
```

---

### 19. Séparer les dépendances de développement

```
# requirements.txt — production uniquement
fastapi
uvicorn[standard]
python-jose[cryptography]
passlib[bcrypt]
reportlab
pydantic

# requirements-dev.txt
-r requirements.txt
pytest
httpx
pytest-asyncio
```

---

### 20. Adopter un système de migrations

Remplacer les `ALTER TABLE` dans `init_db()` par des migrations numérotées :

```
migrations/
  001_initial_schema.sql
  002_add_fac_echeance.sql
  003_add_user_roles.sql
```

```python
# db.py
def run_migrations(conn):
    conn.execute("CREATE TABLE IF NOT EXISTS _migrations (id INTEGER PRIMARY KEY, name TEXT, applied_at TEXT)")
    applied = {r[0] for r in conn.execute("SELECT name FROM _migrations")}
    for path in sorted(Path("migrations").glob("*.sql")):
        if path.name not in applied:
            conn.executescript(path.read_text())
            conn.execute("INSERT INTO _migrations(name, applied_at) VALUES (?, datetime('now'))", (path.name,))
            conn.commit()
            logger.info("Migration appliquée : %s", path.name)
```

---

## Plan d'action priorisé

| Priorité | Action | Effort estimé |
|---|---|---|
| 🔴 Immédiat | Générer une vraie clé secrète JWT | 2 min |
| 🔴 Immédiat | Ajouter `.env` au `.gitignore` | 1 min |
| 🔴 Court terme | Créer le dossier `routes/` | selon avancement |
| 🔴 Court terme | Passer aux `HttpOnly` cookies | ~1h |
| 🔴 Court terme | Restreindre CORS en production | 10 min |
| 🟡 Moyen terme | Rotation des logs | 15 min |
| 🟡 Moyen terme | Index SQLite + validation Pydantic | 30 min |
| 🟡 Moyen terme | Logger les exceptions silencieuses | 20 min |
| 🟡 Moyen terme | Réduire durée JWT + alerte mot de passe défaut | 30 min |
| 🔵 Long terme | Tests automatisés | 1–2 jours |
| 🔵 Long terme | Extraction JS + migrations + pagination serveur | 1–2 jours |

---

*Rapport généré automatiquement — FATIGEST Pro · Audit juin 2026*
