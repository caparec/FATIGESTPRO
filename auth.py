import bcrypt
import jwt
import logging
from datetime import datetime, timedelta, timezone
from fastapi import Header, HTTPException
from typing import Optional
from config import SECRET_KEY, ALGORITHM, ACCESS_TOKEN_EXPIRE_MINUTES, ADMIN_USERNAME, ADMIN_PASSWORD

logger = logging.getLogger(__name__)

def hash_password(password: str) -> str:
    return bcrypt.hashpw(password.encode(), bcrypt.gensalt()).decode()

def verify_password(password: str, hashed: str) -> bool:
    return bcrypt.checkpw(password.encode(), hashed.encode())

def create_token(username: str) -> str:
    expire = datetime.now(timezone.utc) + timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)
    payload = {"sub": username, "exp": expire}
    return jwt.encode(payload, SECRET_KEY, algorithm=ALGORITHM)

def decode_token(token: str) -> str:
    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        return payload["sub"]
    except jwt.ExpiredSignatureError:
        raise HTTPException(401, "Token expiré")
    except jwt.InvalidTokenError:
        raise HTTPException(401, "Token invalide")

async def require_auth(authorization: Optional[str] = Header(None)) -> str:
    if not authorization:
        raise HTTPException(401, "Authentification requise")
    scheme, _, token = authorization.partition(" ")
    if scheme.lower() != "bearer" or not token:
        raise HTTPException(401, "Authentification requise")
    return decode_token(token)

def ensure_admin_user():
    from db import get_conn
    conn = get_conn()
    row = conn.execute("SELECT usr_id FROM p_usr WHERE usr_login=?", (ADMIN_USERNAME,)).fetchone()
    if not row:
        hashed = hash_password(ADMIN_PASSWORD)
        conn.execute("INSERT INTO p_usr (usr_login, usr_pwd, usr_nom) VALUES (?,?,?)",
                     (ADMIN_USERNAME, hashed, "Administrateur"))
        conn.commit()
        logger.info("Admin user created")
    conn.close()
