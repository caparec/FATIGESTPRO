import os
import sqlite3
import subprocess
import sys
import shutil
import logging

# --- CONFIGURATION ---
TARGET_DIR = r'C:\zfacile'
DB_FILE_NAME = 'fatigest_moderne.db'
MAIN_SERVER_FILE_NAME = 'main.py'
INDEX_HTML_NAME = 'index.html'

DB_PATH = os.path.join(TARGET_DIR, DB_FILE_NAME).replace('\\', '/')
MAIN_PATH = os.path.join(TARGET_DIR, MAIN_SERVER_FILE_NAME)
INDEX_PATH = os.path.join(TARGET_DIR, INDEX_HTML_NAME)
LOG_FILE = os.path.join(TARGET_DIR, 'server.log')

def preparer_environnement():
    if not os.path.exists(TARGET_DIR): os.makedirs(TARGET_DIR)
    logging.basicConfig(filename=LOG_FILE, level=logging.INFO, 
                        format='%(asctime)s - %(levelname)s - %(message)s')

def creer_fichiers():
    # --- main.py (Backend enrichi pour la facturation marocaine) ---
    main_content = f"""from fastapi import FastAPI, HTTPException
import sqlite3, uvicorn, datetime, logging
from pydantic import BaseModel, Field
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import FileResponse
from typing import List, Optional

app = FastAPI()
app.add_middleware(CORSMiddleware, allow_origins=["*"], allow_methods=["*"], allow_headers=["*"])

def get_db():
    conn = sqlite3.connect('{DB_PATH}')
    conn.row_factory = sqlite3.Row
    return conn

def init_db():
    conn = get_db()
    cursor = conn.cursor()
    cursor.execute("PRAGMA table_info(p_cli)")
    cols = [c[1] for c in cursor.fetchall()]
    
    updates = [
        ("cli_type", "TEXT DEFAULT 'ENTREPRISE'"),
        ("cli_ice", "TEXT"),
        ("cli_if", "TEXT"),
        ("cli_rc", "TEXT"),
        ("cli_patente", "TEXT"),
        ("cli_email", "TEXT"),
        ("cli_rib", "TEXT"),
        ("cli_banque", "TEXT"),
        ("cli_mode_reg", "TEXT DEFAULT 'VIREMENT'"),
        ("cli_delai_reg", "TEXT DEFAULT 'COMPTANT'"),
        ("cli_actif", "INTEGER DEFAULT 1"),
        ("cli_abo_cadence", "TEXT DEFAULT 'AUCUNE'"),
        ("cli_abo_montant", "REAL DEFAULT 0"),
        ("cli_abo_next", "DATE")
    ]
    
    for col_name, col_type in updates:
        if col_name not in cols:
            cursor.execute(f"ALTER TABLE p_cli ADD COLUMN {{col_name}} {{col_type}}")
    
    cursor.execute('''CREATE TABLE IF NOT EXISTS m_fac (
        fac_num INTEGER PRIMARY KEY AUTOINCREMENT,
        fac_cli_cod TEXT,
        fac_dat DATE,
        fac_mt_ht REAL,
        fac_tva REAL DEFAULT 20.0,
        fac_etat TEXT DEFAULT 'BROUILLON'
    )''')
    
    cursor.execute('''CREATE TABLE IF NOT EXISTS m_reg (
        reg_id INTEGER PRIMARY KEY AUTOINCREMENT,
        reg_cli_cod TEXT,
        reg_dat DATE,
        reg_mt REAL,
        reg_mode TEXT,
        reg_ref TEXT
    )''')
    
    conn.commit()
    conn.close()

init_db()

class ClientSchema(BaseModel):
    cli_cod: str
    cli_raso: str
    cli_type: str = "ENTREPRISE"
    cli_tel: Optional[str] = None
    cli_email: Optional[str] = None
    cli_adr: Optional[str] = None
    cli_ice: Optional[str] = None
    cli_if: Optional[str] = None
    cli_rc: Optional[str] = None
    cli_patente: Optional[str] = None
    cli_rib: Optional[str] = None
    cli_banque: Optional[str] = None
    cli_mode_reg: str = "VIREMENT"
    cli_delai_reg: str = "COMPTANT"
    cli_actif: int = 1

class FactureIn(BaseModel):
    cli_cod: str
    montant_ht: float

@app.get("/api/clients")
def list_clients(q: str = "", actif: Optional[int] = None):
    conn = get_db()
    query = "SELECT * FROM p_cli WHERE (cli_raso LIKE ? OR cli_cod LIKE ? OR cli_ice LIKE ?) "
    params = [f"%{{q}}%", f"%{{q}}%", f"%{{q}}%"]
    if actif is not None:
        query += " AND cli_actif = ?"
        params.append(actif)
    res = conn.execute(query + " ORDER BY cli_raso ASC", params).fetchall()
    conn.close()
    return [dict(row) for row in res]

@app.post("/api/clients")
def save_client(c: ClientSchema):
    conn = get_db()
    try:
        conn.execute(\"\"\"INSERT OR REPLACE INTO p_cli 
            (cli_cod, cli_raso, cli_type, cli_tel, cli_email, cli_adr, cli_ice, cli_if, cli_rc, cli_patente, cli_rib, cli_banque, cli_mode_reg, cli_delai_reg, cli_actif)
            VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\"\"\", 
            (c.cli_cod, c.cli_raso, c.cli_type, c.cli_tel, c.cli_email, c.cli_adr, c.cli_ice, c.cli_if, c.cli_rc, c.cli_patente, c.cli_rib, c.cli_banque, c.cli_mode_reg, c.cli_delai_reg, c.cli_actif))
        conn.commit()
        return {{"ok": True}}
    finally: conn.close()

@app.delete("/api/clients/{{cod}}")
def delete_client(cod: str):
    conn = get_db()
    conn.execute("DELETE FROM p_cli WHERE cli_cod=?", (cod,))
    conn.commit(); conn.close()
    return {{"ok": True}}

@app.post("/api/factures/rapide")
def create_fac(data: FactureIn):
    conn = get_db()
    today = datetime.date.today().isoformat()
    conn.execute("INSERT INTO m_fac (fac_cli_cod, fac_dat, fac_mt_ht) VALUES (?,?,?)", (data.cli_cod, today, data.montant_ht))
    conn.commit(); conn.close()
    return {{"ok": True}}

@app.get("/api/factures")
def list_factures(q: str = ""):
    conn = get_db()
    if q:
        res = conn.execute(\"\"\"SELECT f.*, c.cli_raso FROM m_fac f 
            JOIN p_cli c ON f.fac_cli_cod = c.cli_cod 
            WHERE c.cli_raso LIKE ? OR f.fac_num LIKE ?
            ORDER BY f.fac_dat DESC\"\"\", (f"%{{q}}%", f"%{{q}}%")).fetchall()
    else:
        res = conn.execute(\"\"\"SELECT f.*, c.cli_raso FROM m_fac f 
            JOIN p_cli c ON f.fac_cli_cod = c.cli_cod 
            ORDER BY f.fac_dat DESC\"\"\").fetchall()
    conn.close()
    return [dict(row) for row in res]

@app.post("/api/factures/valider")
def valider_factures(data: List[int]):
    conn = get_db()
    for fid in data:
        conn.execute("UPDATE m_fac SET fac_etat='VALIDE' WHERE fac_num=?", (fid,))
    conn.commit(); conn.close()
    return {{"ok": True}}

@app.delete("/api/factures/{{num}}")
def delete_facture(num: int):
    conn = get_db()
    conn.execute("DELETE FROM m_fac WHERE fac_num=?", (num,))
    conn.commit(); conn.close()
    return {{"ok": True}}

@app.get("/api/stats")
def get_stats():
    conn = get_db()
    c = conn.execute("SELECT COUNT(*) FROM p_cli WHERE cli_actif=1").fetchone()[0]
    brouillons = conn.execute("SELECT COUNT(*) FROM m_fac WHERE fac_etat='BROUILLON'").fetchone()[0]
    ca = conn.execute("SELECT COALESCE(SUM(fac_mt_ht * (1 + fac_tva/100)), 0) FROM m_fac WHERE fac_etat='VALIDE'").fetchone()[0]
    conn.close()
    return {{"clients": c, "brouillons": brouillons, "ca": round(ca, 2)}}

@app.get("/")
def home(): return FileResponse('{INDEX_PATH}')

if __name__ == '__main__': uvicorn.run(app, host="127.0.0.1", port=8000)
"""

    # --- index.html ---
    html_content = """<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>FATIGEST Pro - Gestion Clientèle</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;600;800&display=swap');
        body { font-family: 'Plus Jakarta Sans', sans-serif; background-color: #f1f5f9; }
    </style>
</head>
<body class="text-slate-800">
    <div class="flex min-h-screen">
        <aside class="w-20 lg:w-64 bg-slate-900 text-white p-4 lg:p-6 flex flex-col fixed h-full z-50">
            <div class="mb-10 flex items-center gap-3">
                <div class="w-10 h-10 bg-indigo-600 rounded-xl flex items-center justify-center shrink-0 shadow-lg shadow-indigo-500/30">
                    <i class="fas fa-file-invoice text-white"></i>
                </div>
                <span class="hidden lg:inline font-extrabold text-xl tracking-tighter">FATIGEST <span class="text-indigo-400">PRO</span></span>
            </div>
            <nav class="space-y-2">
                <button onclick="switchView('clients')" id="btn-clients" class="w-full flex items-center gap-3 p-3 rounded-xl hover:bg-slate-800 transition text-slate-400 hover:text-white">
                    <i class="fas fa-users w-5"></i> <span class="hidden lg:inline font-bold text-sm">Clients</span>
                </button>
                <button onclick="switchView('factures')" id="btn-factures" class="w-full flex items-center gap-3 p-3 rounded-xl hover:bg-slate-800 transition text-slate-400 hover:text-white">
                    <i class="fas fa-file-invoice-dollar w-5"></i> <span class="hidden lg:inline font-bold text-sm">Factures</span>
                </button>
                <button onclick="newClient()" class="w-full flex items-center gap-3 p-3 rounded-xl bg-indigo-600 text-white shadow-lg shadow-indigo-500/20">
                    <i class="fas fa-plus w-5"></i> <span class="hidden lg:inline font-bold text-sm">Nouveau Client</span>
                </button>
            </nav>
        </aside>

        <main class="flex-1 ml-20 lg:ml-64 p-4 lg:p-10">
            <header class="flex flex-col lg:flex-row justify-between items-start lg:items-center mb-8 gap-4">
                <div>
                    <h1 id="view-title" class="text-3xl font-black text-slate-900">Annuaire Client</h1>
                    <p class="text-slate-500 text-sm">Gestion des fiches et facturation.</p>
                </div>
                <div class="relative flex-1 lg:flex-none">
                    <i class="fas fa-search absolute left-4 top-1/2 -translate-y-1/2 text-slate-400"></i>
                    <input type="text" id="search" oninput="loadData()" placeholder="Rechercher..." class="w-full lg:w-80 pl-11 pr-4 py-3 bg-white border border-slate-200 rounded-2xl outline-none focus:ring-4 ring-indigo-500/10 text-sm font-medium">
                </div>
            </header>

            <div class="grid grid-cols-3 gap-4 mb-8">
                <div class="bg-white p-4 rounded-2xl border-l-4 border-indigo-500">
                    <p class="text-xs font-bold text-slate-400 uppercase">Clients Actifs</p>
                    <p id="stat-clients" class="text-2xl font-black">0</p>
                </div>
                <div class="bg-white p-4 rounded-2xl border-l-4 border-orange-500">
                    <p class="text-xs font-bold text-slate-400 uppercase">Brouillons</p>
                    <p id="stat-brouillons" class="text-2xl font-black text-orange-600">0</p>
                </div>
                <div class="bg-white p-4 rounded-2xl border-l-4 border-emerald-500">
                    <p class="text-xs font-bold text-slate-400 uppercase">Chiffre d'Affaires</p>
                    <p id="stat-ca" class="text-2xl font-black text-emerald-600">0 DH</p>
                </div>
            </div>

            <div id="list-clients" class="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-6"></div>

            <div id="list-factures" class="hidden">
                <div class="bg-white rounded-2xl shadow-sm border overflow-hidden">
                    <table class="w-full text-left">
                        <thead class="bg-slate-50 border-b text-slate-500 text-sm uppercase">
                            <tr>
                                <th class="p-4">N°</th>
                                <th class="p-4">Date</th>
                                <th class="p-4">Client</th>
                                <th class="p-4 text-right">Montant HT</th>
                                <th class="p-4 text-right">TVA (20%)</th>
                                <th class="p-4 text-right">Total TTC</th>
                                <th class="p-4 text-center">État</th>
                                <th class="p-4">Action</th>
                            </tr>
                        </thead>
                        <tbody id="factures-body" class="divide-y"></tbody>
                    </table>
                </div>
            </div>

            <div id="form-container" class="hidden max-w-4xl mx-auto bg-white rounded-[2.5rem] shadow-xl border border-slate-100 overflow-hidden">
                <div class="p-8 border-b border-slate-50 flex justify-between items-center bg-slate-50/50">
                    <h2 class="text-xl font-black tracking-tight" id="form-title">Fiche Client</h2>
                    <button onclick="switchView('clients')" class="text-slate-400 hover:text-slate-600"><i class="fas fa-times text-xl"></i></button>
                </div>
                <form id="client-form" class="p-8 space-y-8">
                    <div>
                        <p class="text-[10px] font-black uppercase text-indigo-500 mb-4 tracking-widest">Identification</p>
                        <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                            <div class="space-y-1">
                                <label class="text-xs font-bold text-slate-500 px-1">Code Interne</label>
                                <input type="text" id="cli_cod" required class="w-full p-3 bg-slate-50 border border-slate-200 rounded-xl outline-none font-bold">
                            </div>
                            <div class="md:col-span-2 space-y-1">
                                <label class="text-xs font-bold text-slate-500 px-1">Raison Sociale</label>
                                <input type="text" id="cli_raso" required class="w-full p-3 bg-slate-50 border border-slate-200 rounded-xl outline-none font-bold">
                            </div>
                        </div>
                    </div>
                    <div>
                        <p class="text-[10px] font-black uppercase text-indigo-500 mb-4 tracking-widest">Informations Légales (Maroc)</p>
                        <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
                            <input type="text" id="cli_ice" placeholder="ICE" class="p-3 bg-slate-50 border border-slate-200 rounded-xl text-sm">
                            <input type="text" id="cli_if" placeholder="IF" class="p-3 bg-slate-50 border border-slate-200 rounded-xl text-sm">
                            <input type="text" id="cli_rc" placeholder="R.C." class="p-3 bg-slate-50 border border-slate-200 rounded-xl text-sm">
                            <input type="text" id="cli_patente" placeholder="Patente" class="p-3 bg-slate-50 border border-slate-200 rounded-xl text-sm">
                        </div>
                    </div>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                        <div class="space-y-4">
                            <p class="text-[10px] font-black uppercase text-indigo-500 tracking-widest">Coordonnées</p>
                            <input type="email" id="cli_email" placeholder="Email" class="w-full p-3 bg-slate-50 border border-slate-200 rounded-xl text-sm">
                            <input type="text" id="cli_tel" placeholder="Téléphone" class="w-full p-3 bg-slate-50 border border-slate-200 rounded-xl text-sm">
                            <textarea id="cli_adr" placeholder="Adresse" class="w-full p-3 bg-slate-50 border border-slate-200 rounded-xl text-sm h-24"></textarea>
                        </div>
                        <div class="space-y-4">
                            <p class="text-[10px] font-black uppercase text-indigo-500 tracking-widest">Paiement & Banque</p>
                            <select id="cli_mode_reg" class="w-full p-3 bg-slate-50 border border-slate-200 rounded-xl text-sm font-bold">
                                <option value="VIREMENT">Virement Bancaire</option>
                                <option value="CHEQUE">Chèque</option>
                                <option value="ESPECES">Espèces</option>
                            </select>
                            <input type="text" id="cli_banque" placeholder="Banque" class="w-full p-3 bg-slate-50 border border-slate-200 rounded-xl text-sm">
                            <input type="text" id="cli_rib" placeholder="RIB" class="w-full p-3 bg-slate-50 border border-slate-200 rounded-xl text-sm font-mono">
                        </div>
                    </div>
                    <div class="pt-6 border-t border-slate-100 flex gap-4">
                        <button type="submit" class="bg-indigo-600 text-white px-8 py-4 rounded-2xl font-black shadow-xl">Enregistrer</button>
                        <button type="button" onclick="switchView('clients')" class="bg-slate-100 text-slate-500 px-8 py-4 rounded-2xl font-bold">Annuler</button>
                        <div class="flex-1"></div>
                        <select id="cli_actif" class="p-2 bg-slate-100 rounded-lg text-xs font-black">
                            <option value="1">ACTIF</option>
                            <option value="0">DÉSACTIVÉ</option>
                        </select>
                    </div>
                </form>
            </div>
        </main>
    </div>

    <div id="modal-fac" class="fixed inset-0 bg-slate-900/60 hidden flex items-center justify-center z-[100] p-4">
        <div class="bg-white rounded-[2rem] w-full max-w-md p-8 shadow-2xl">
            <h3 class="text-xl font-black mb-1">Facturation Rapide</h3>
            <p id="fac-client-name" class="text-indigo-600 text-sm font-bold mb-6">Client</p>
            <input type="hidden" id="fac-cli-cod">
            <div class="space-y-4">
                <div>
                    <label class="text-[10px] font-bold text-slate-400 uppercase">Montant HT (DH)</label>
                    <input type="number" id="fac-mt" step="0.01" class="w-full p-4 bg-slate-50 border-2 border-slate-100 rounded-2xl text-2xl font-black outline-none focus:border-indigo-500">
                </div>
                <button onclick="submitFacture()" class="w-full bg-slate-900 text-white py-4 rounded-2xl font-black shadow-xl">Générer Brouillon</button>
                <button onclick="closeFac()" class="w-full text-slate-400 font-bold py-2">Annuler</button>
            </div>
        </div>
    </div>

    <div id="toast" class="fixed bottom-10 left-1/2 -translate-x-1/2 bg-slate-900 text-white px-8 py-4 rounded-2xl shadow-2xl flex items-center gap-4 opacity-0 pointer-events-none transition-all duration-300 z-[200]">
        <i class="fas fa-check-circle text-emerald-400"></i>
        <span id="toast-msg" class="font-bold text-sm">Action effectuée</span>
    </div>

    <script>
        let allClients = [];
        let allFactures = [];
        let currentView = 'clients';

        function showToast(msg) {
            const t = document.getElementById('toast');
            document.getElementById('toast-msg').innerText = msg;
            t.classList.add('opacity-100', '-translate-y-4');
            setTimeout(() => t.classList.remove('opacity-100', '-translate-y-4'), 3000);
        }

        async function loadStats() {
            const s = await fetch('/api/stats').then(r => r.json());
            document.getElementById('stat-clients').innerText = s.clients;
            document.getElementById('stat-brouillons').innerText = s.brouillons;
            document.getElementById('stat-ca').innerText = s.ca.toLocaleString() + ' DH';
        }

        function switchView(view) {
            currentView = view;
            document.querySelectorAll('aside nav button').forEach(b => {
                b.classList.remove('bg-indigo-600', 'text-white');
                b.classList.add('text-slate-400');
            });
            document.getElementById('btn-' + view).classList.add('bg-indigo-600', 'text-white');
            document.getElementById('btn-' + view).classList.remove('text-slate-400');
            
            document.getElementById('list-clients').classList.toggle('hidden', view !== 'clients');
            document.getElementById('list-factures').classList.toggle('hidden', view !== 'factures');
            document.getElementById('form-container').classList.add('hidden');
            document.getElementById('view-title').innerText = view === 'clients' ? 'Annuaire Client' : 'Factures';
            loadData();
        }

        async function loadData() {
            await loadStats();
            const q = document.getElementById('search').value;
            if(currentView === 'clients') {
                allClients = await fetch(`/api/clients?q=${{q}}`).then(r => r.json());
                renderClients();
            } else {
                allFactures = await fetch(`/api/factures?q=${{q}}`).then(r => r.json());
                renderFactures();
            }
        }

        function renderClients() {
            const c = document.getElementById('list-clients');
            c.innerHTML = allClients.map(cli => `
                <div class="bg-white p-6 rounded-[2rem] border border-slate-100 shadow-sm hover:shadow-xl transition-all group ${{cli.cli_actif ? '' : 'grayscale opacity-60'}}">
                    <div class="flex justify-between items-start mb-4">
                        <div class="w-12 h-12 bg-slate-50 rounded-2xl flex items-center justify-center text-indigo-600 font-black text-xs border border-slate-100">${{cli.cli_cod.substring(0,3)}}</div>
                        <div class="flex gap-1 opacity-0 group-hover:opacity-100">
                            <button onclick="editClient('${{cli.cli_cod}}')" class="p-2 text-slate-400 hover:text-indigo-600"><i class="fas fa-pen"></i></button>
                            <button onclick="confirmDelete('${{cli.cli_cod}}')" class="p-2 text-slate-400 hover:text-red-500"><i class="fas fa-trash"></i></button>
                        </div>
                    </div>
                    <h3 class="font-black text-slate-900 line-clamp-1">${{cli.cli_raso}}</h3>
                    <p class="text-[10px] font-mono text-slate-400 mb-4">${{cli.cli_cod}} | ICE: ${{cli.cli_ice || '---'}}</p>
                    <div class="grid grid-cols-2 gap-2 mb-6">
                        <div class="bg-slate-50 p-3 rounded-xl">
                            <p class="text-[9px] font-bold text-slate-400 uppercase">Mode</p>
                            <p class="text-xs font-black">${{cli.cli_mode_reg}}</p>
                        </div>
                        <div class="bg-slate-50 p-3 rounded-xl">
                            <p class="text-[9px] font-bold text-slate-400 uppercase">État</p>
                            <p class="text-xs font-black ${{cli.cli_actif ? 'text-emerald-500' : 'text-slate-400'}}">${{cli.cli_actif ? 'ACTIF' : 'INACTIF'}}</p>
                        </div>
                    </div>
                    <button onclick="openFac('${{cli.cli_cod}}', '${{cli.cli_raso}}')" class="w-full bg-slate-900 text-white py-3 rounded-xl text-[10px] font-black uppercase hover:bg-indigo-600">
                        <i class="fas fa-plus-circle mr-2"></i> Facturer
                    </button>
                </div>
            `).join('');
        }

        function renderFactures() {
            const tbody = document.getElementById('factures-body');
            tbody.innerHTML = allFactures.map(f => {
                const tva = f.fac_mt_ht * 0.20;
                const ttc = f.fac_mt_ht + tva;
                return `<tr class="${{f.fac_etat === 'BROUILLON' ? 'bg-orange-50/50' : ''}}">
                    <td class="p-4 font-bold">#${{f.fac_num}}</td>
                    <td class="p-4 text-sm">${{f.fac_dat}}</td>
                    <td class="p-4 font-bold">${{f.cli_raso}}</td>
                    <td class="p-4 text-right font-mono">${{f.fac_mt_ht.toFixed(2)}} DH</td>
                    <td class="p-4 text-right font-mono text-slate-500">${{tva.toFixed(2)}} DH</td>
                    <td class="p-4 text-right font-black">${{ttc.toFixed(2)}} DH</td>
                    <td class="p-4 text-center"><span class="px-3 py-1 rounded-full text-[10px] font-black uppercase ${{f.fac_etat === 'VALIDE' ? 'bg-emerald-100 text-emerald-600' : 'bg-orange-100 text-orange-600'}}">${{f.fac_etat}}</span></td>
                    <td class="p-4">${{f.fac_etat === 'BROUILLON' ? `<button onclick="deleteFacture(${{f.fac_num}})" class="text-red-500 hover:text-red-700"><i class="fas fa-trash"></i></button>` : ''}}</td>
                </tr>`;
            }).join('');
        }

        function newClient() {
            document.getElementById('client-form').reset();
            document.getElementById('cli_cod').readOnly = false;
            document.getElementById('list-clients').classList.add('hidden');
            document.getElementById('form-container').classList.remove('hidden');
            document.getElementById('view-title').innerText = "Nouveau Client";
        }

        function editClient(cod) {
            const cli = allClients.find(x => x.cli_cod === cod);
            if(!cli) return;
            newClient();
            document.getElementById('view-title').innerText = "Modifier Fiche";
            document.getElementById('cli_cod').value = cli.cli_cod;
            document.getElementById('cli_cod').readOnly = true;
            document.getElementById('cli_raso').value = cli.cli_raso || '';
            document.getElementById('cli_ice').value = cli.cli_ice || '';
            document.getElementById('cli_if').value = cli.cli_if || '';
            document.getElementById('cli_rc').value = cli.cli_rc || '';
            document.getElementById('cli_patente').value = cli.cli_patente || '';
            document.getElementById('cli_email').value = cli.cli_email || '';
            document.getElementById('cli_tel').value = cli.cli_tel || '';
            document.getElementById('cli_adr').value = cli.cli_adr || '';
            document.getElementById('cli_mode_reg').value = cli.cli_mode_reg || 'VIREMENT';
            document.getElementById('cli_banque').value = cli.cli_banque || '';
            document.getElementById('cli_rib').value = cli.cli_rib || '';
            document.getElementById('cli_actif').value = cli.cli_actif || 1;
        }

        async function confirmDelete(cod) {
            if(!confirm("Supprimer ce client ?")) return;
            await fetch(`/api/clients/${{cod}}`, {method:'DELETE'});
            showToast("Client supprimé");
            loadData();
        }

        async function deleteFacture(num) {
            if(!confirm("Supprimer cette facture ?")) return;
            await fetch(`/api/factures/${{num}}`, {method:'DELETE'});
            showToast("Facture supprimée");
            loadData();
        }

        document.getElementById('client-form').onsubmit = async (e) => {
            e.preventDefault();
            const data = {
                cli_cod: document.getElementById('cli_cod').value,
                cli_raso: document.getElementById('cli_raso').value,
                cli_ice: document.getElementById('cli_ice').value,
                cli_if: document.getElementById('cli_if').value,
                cli_rc: document.getElementById('cli_rc').value,
                cli_patente: document.getElementById('cli_patente').value,
                cli_email: document.getElementById('cli_email').value,
                cli_tel: document.getElementById('cli_tel').value,
                cli_adr: document.getElementById('cli_adr').value,
                cli_mode_reg: document.getElementById('cli_mode_reg').value,
                cli_banque: document.getElementById('cli_banque').value,
                cli_rib: document.getElementById('cli_rib').value,
                cli_actif: parseInt(document.getElementById('cli_actif').value)
            };
            await fetch('/api/clients', {method: 'POST', headers: {'Content-Type': 'application/json'}, body: JSON.stringify(data)});
            showToast("Fiche enregistrée");
            switchView('clients');
        };

        function openFac(cod, name) {
            document.getElementById('fac-cli-cod').value = cod;
            document.getElementById('fac-client-name').innerText = name;
            document.getElementById('fac-mt').value = '';
            document.getElementById('modal-fac').classList.remove('hidden');
        }
        function closeFac() { document.getElementById('modal-fac').classList.add('hidden'); }
        async function submitFacture() {
            const mt = document.getElementById('fac-mt').value;
            if(!mt || mt <= 0) return alert('Montant invalide');
            await fetch('/api/factures/rapide', {method: 'POST', headers: {'Content-Type': 'application/json'}, body: JSON.stringify({cli_cod: document.getElementById('fac-cli-cod').value, montant_ht: parseFloat(mt)})});
            closeFac();
            showToast('Facture créée');
            loadData();
        }

        loadData();
    </script>
</body>
</html>
"""

    with open(MAIN_PATH, 'w', encoding='utf-8') as f: f.write(main_content)
    with open(INDEX_PATH, 'w', encoding='utf-8') as f: f.write(html_content)

def lancer():
    preparer_environnement()
    creer_fichiers()
    print("\n--- FATIGEST PRO ACTIF ---")
    print("URL: http://127.0.0.1:8000")
    try: subprocess.run([sys.executable, MAIN_PATH])
    except KeyboardInterrupt: print("\nArrêt.")

if __name__ == "__main__": lancer()
