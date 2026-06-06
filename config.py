import os
from dotenv import load_dotenv

load_dotenv()

BASE_DIR = os.environ.get("FATIGEST_BASE", "C:/zfacile")
DB_PATH = os.path.join(BASE_DIR, "fatigest_moderne.db")
LOG_FILE = os.path.join(BASE_DIR, "server.log")

SECRET_KEY = os.environ.get("FATIGEST_SECRET", "change-me-in-production-32chars!")
ALGORITHM = "HS256"
ACCESS_TOKEN_EXPIRE_MINUTES = int(os.environ.get("TOKEN_EXPIRE", "60"))

ADMIN_USERNAME = os.environ.get("FATIGEST_USER", "admin")
ADMIN_PASSWORD = os.environ.get("FATIGEST_PASS", "admin123")

ALLOWED_ORIGINS = os.environ.get("ALLOWED_ORIGINS", "http://127.0.0.1:8000").split(",")
