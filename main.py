import logging
import os
from logging.handlers import RotatingFileHandler
from contextlib import asynccontextmanager
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import FileResponse
from config import BASE_DIR, LOG_FILE, ALLOWED_ORIGINS
from db import init_db
from auth import ensure_admin_user

handler = RotatingFileHandler(LOG_FILE, maxBytes=5*1024*1024, backupCount=3)
logging.basicConfig(
    handlers=[handler],
    level=logging.INFO,
    format="%(asctime)s %(levelname)s %(name)s: %(message)s"
)
logger = logging.getLogger(__name__)

@asynccontextmanager
async def lifespan(app: FastAPI):
    init_db()
    ensure_admin_user()
    logger.info("FATIGEST Pro started")
    yield

app = FastAPI(title="FATIGEST Pro", version="2.0.0", lifespan=lifespan)

app.add_middleware(
    CORSMiddleware,
    allow_origins=ALLOWED_ORIGINS,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

from routes.auth_routes import router as auth_router
from routes.clients import router as clients_router
from routes.articles import router as articles_router
from routes.factures import router as factures_router
from routes.reglements import router as reglements_router
from routes.devis import router as devis_router
from routes.abonnements import router as abonnements_router
from routes.rapports import router as rapports_router
from routes.stats import router as stats_router
from routes.backup import router as backup_router

app.include_router(auth_router)
app.include_router(clients_router)
app.include_router(articles_router)
app.include_router(factures_router)
app.include_router(reglements_router)
app.include_router(devis_router)
app.include_router(abonnements_router)
app.include_router(rapports_router)
app.include_router(stats_router)
app.include_router(backup_router)

@app.get("/")
def home():
    return FileResponse(f'{BASE_DIR}/index.html')

if __name__ == '__main__':
    import uvicorn
    uvicorn.run("main:app", host="127.0.0.1", port=8000, reload=True)
