import sqlite3
import logging
from contextlib import contextmanager
from config import DB_PATH

logger = logging.getLogger(__name__)

def get_conn():
    conn = sqlite3.connect(DB_PATH)
    conn.row_factory = sqlite3.Row
    conn.execute("PRAGMA journal_mode=WAL")
    conn.execute("PRAGMA foreign_keys=ON")
    return conn

@contextmanager
def get_db():
    conn = get_conn()
    try:
        yield conn
        conn.commit()
    except Exception:
        conn.rollback()
        raise
    finally:
        conn.close()

def init_db():
    conn = get_conn()
    cursor = conn.cursor()
    cursor.execute("PRAGMA table_info(p_cli)")
    cols = [c[1] for c in cursor.fetchall()]
    for col_name, col_type in [
        ("cli_type","TEXT DEFAULT 'ENTREPRISE'"), ("cli_ice","TEXT"), ("cli_if","TEXT"),
        ("cli_rc","TEXT"), ("cli_patente","TEXT"), ("cli_email","TEXT"), ("cli_rib","TEXT"),
        ("cli_banque","TEXT"), ("cli_mode_reg","TEXT DEFAULT 'VIREMENT'"), ("cli_delai_reg","TEXT DEFAULT 'COMPTANT'"),
        ("cli_actif","INTEGER DEFAULT 1"), ("cli_abo_cadence","TEXT DEFAULT 'AUCUNE'"),
        ("cli_abo_montant","REAL DEFAULT 0"), ("cli_abo_next","DATE"), ("cli_vil","TEXT")
    ]:
        if col_name not in cols:
            try:
                cursor.execute(f"ALTER TABLE p_cli ADD COLUMN {col_name} {col_type}")
            except Exception as e:
                logger.debug("Migration p_cli.%s ignorée : %s", col_name, e)
    cursor.execute("PRAGMA table_info(p_art)")
    art_cols = [c[1] for c in cursor.fetchall()]
    for cn,ct in [("art_faar","TEXT"),("art_pracT","REAL"),("art_prveT","REAL"),("art_stk","REAL DEFAULT 0")]:
        if cn not in art_cols:
            try:
                cursor.execute(f"ALTER TABLE p_art ADD COLUMN {cn} {ct}")
            except Exception as e:
                logger.debug("Migration p_art.%s ignorée : %s", cn, e)
    cursor.execute("""CREATE TABLE IF NOT EXISTS m_fac (
        fac_num INTEGER PRIMARY KEY AUTOINCREMENT, fac_cli_cod TEXT, fac_dat DATE,
        fac_mt_ht REAL, fac_tva REAL DEFAULT 20.0, fac_etat TEXT DEFAULT 'BROUILLON', fac_type TEXT DEFAULT 'PONCTUEL')""")
    for c in ['fac_echeance','fac_notes']:
        try:
            cursor.execute(f"ALTER TABLE m_fac ADD COLUMN {c} TEXT")
        except Exception as e:
            logger.debug("Migration m_fac.%s ignorée : %s", c, e)
    cursor.execute("""CREATE TABLE IF NOT EXISTS m_fac_ligne (
        lig_id INTEGER PRIMARY KEY AUTOINCREMENT, lig_fac_num INTEGER,
        lig_art_cod TEXT, lig_art_lib TEXT, lig_qte REAL DEFAULT 1, lig_pu REAL DEFAULT 0,
        FOREIGN KEY(lig_fac_num) REFERENCES m_fac(fac_num))""")
    try:
        cursor.execute("ALTER TABLE m_fac_ligne ADD COLUMN lig_remise REAL DEFAULT 0")
    except Exception as e:
        logger.debug("Migration m_fac_ligne.lig_remise ignorée : %s", e)
    cursor.execute("""CREATE TABLE IF NOT EXISTS m_reg (
        reg_id INTEGER PRIMARY KEY AUTOINCREMENT, reg_cli_cod TEXT, reg_fac_num INTEGER,
        reg_dat DATE, reg_mt REAL, reg_mode TEXT, reg_ref TEXT)""")
    cursor.execute("""CREATE TABLE IF NOT EXISTS p_usr (
        usr_id INTEGER PRIMARY KEY AUTOINCREMENT,
        usr_login TEXT UNIQUE NOT NULL,
        usr_pwd TEXT NOT NULL,
        usr_nom TEXT DEFAULT '',
        usr_actif INTEGER DEFAULT 1)""")
    cursor.execute("""CREATE TABLE IF NOT EXISTS m_devis (
        dev_num INTEGER PRIMARY KEY AUTOINCREMENT,
        dev_cli_cod TEXT NOT NULL,
        dev_dat TEXT NOT NULL,
        dev_mt_ht REAL DEFAULT 0,
        dev_tva REAL DEFAULT 20,
        dev_echeance TEXT DEFAULT '30 jours',
        dev_etat TEXT DEFAULT 'BROUILLON',
        dev_type TEXT DEFAULT 'PONCTUEL',
        FOREIGN KEY (dev_cli_cod) REFERENCES p_cli(cli_cod)
    )""")
    cursor.execute("""CREATE TABLE IF NOT EXISTS m_devis_ligne (
        lig_id INTEGER PRIMARY KEY AUTOINCREMENT,
        lig_dev_num INTEGER NOT NULL,
        lig_art_cod TEXT DEFAULT '',
        lig_art_lib TEXT DEFAULT '',
        lig_qte REAL DEFAULT 1,
        lig_pu REAL DEFAULT 0,
        FOREIGN KEY (lig_dev_num) REFERENCES m_devis(dev_num)
    )""")
    try:
        cursor.execute("ALTER TABLE m_devis ADD COLUMN dev_notes TEXT DEFAULT ''")
    except Exception as e:
        logger.debug("Migration m_devis.dev_notes ignorée : %s", e)
    try:
        cursor.execute("ALTER TABLE m_devis_ligne ADD COLUMN lig_remise REAL DEFAULT 0")
    except Exception as e:
        logger.debug("Migration m_devis_ligne.lig_remise ignorée : %s", e)
    try:
        cursor.execute("ALTER TABLE p_cli ADD COLUMN cli_notes TEXT DEFAULT ''")
    except Exception as e:
        logger.debug("Migration p_cli.cli_notes ignorée : %s", e)
    for idx in [
        "CREATE INDEX IF NOT EXISTS idx_cli_raso ON p_cli(cli_raso)",
        "CREATE INDEX IF NOT EXISTS idx_fac_dat ON m_fac(fac_dat)",
        "CREATE INDEX IF NOT EXISTS idx_fac_etat ON m_fac(fac_etat)",
        "CREATE INDEX IF NOT EXISTS idx_fac_cli ON m_fac(fac_cli_cod)",
        "CREATE INDEX IF NOT EXISTS idx_reg_dat ON m_reg(reg_dat)",
        "CREATE INDEX IF NOT EXISTS idx_reg_cli ON m_reg(reg_cli_cod)",
        "CREATE INDEX IF NOT EXISTS idx_reg_fac ON m_reg(reg_fac_num)",
        "CREATE INDEX IF NOT EXISTS idx_lig_fac ON m_fac_ligne(lig_fac_num)",
        "CREATE INDEX IF NOT EXISTS idx_dev_cli ON m_devis(dev_cli_cod)",
    ]:
        try:
            cursor.execute(idx)
        except Exception as e:
            logger.debug("Index ignoré : %s", e)
    conn.commit()
    conn.close()
    logger.info("Database initialized")
