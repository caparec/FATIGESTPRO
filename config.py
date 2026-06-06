import os
from dotenv import load_dotenv

load_dotenv()

BASE_DIR = os.environ.get("FATIGEST_BASE", "C:/zfacile")
DB_PATH = os.path.join(BASE_DIR, "fatigest_moderne.db")
LOG_FILE = os.path.join(BASE_DIR, "server.log")

SECRET_KEY = os.environ.get("FATIGEST_SECRET", "change-me-in-production-32chars!")
ALGORITHM = "HS256"
ACCESS_TOKEN_EXPIRE_MINUTES = 480

ADMIN_USERNAME = os.environ.get("FATIGEST_USER", "admin")
ADMIN_PASSWORD = os.environ.get("FATIGEST_PASS", "admin123")
