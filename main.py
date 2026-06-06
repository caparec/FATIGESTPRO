import logging
from contextlib import asynccontextmanager
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import FileResponse
from config import BASE_DIR, LOG_FILE
from db import init_db
from auth import ensure_admin_user

logging.basicConfig(filename=LOG_FILE, level=logging.INFO)
logger = logging.getLogger(__name__)

@asynccontextmanager
async def lifespan(app: FastAPI):
    init_db()
    ensure_admin_user()
    logger.info("FATIGEST Pro started")
    yield

app = FastAPI(title="FATIGEST Pro", version="2.0.0", lifespan=lifespan)

# In production, restrict origins
app.add_middleware(CORSMiddleware, allow_origins=["*"], allow_methods=["*"], allow_headers=["*"])

# Import routes
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
