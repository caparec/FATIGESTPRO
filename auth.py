import bcrypt
import jwt
import logging
from datetime import datetime, timedelta, timezone
from fastapi import Header, HTTPException, Cookie
from typing import Optional
from config import SECRET_KEY, ALGORITHM, ACCESS_TOKEN_EXPIRE_MINUTES, ADMIN_USERNAME, ADMIN_PASSWORD

logger = logging.getLogger(__name__)

DEFAULT_PASSWORD = "admin123"

def hash_password(password: str) -> str:
    return bcrypt.hashpw(password.encode(), bcrypt.gensalt()).decode()

def verify_password(password: str, hashed: str) -> bool:
    return bcrypt.checkpw(password.encode(), hashed.encode())

def is_default_password(plain: str) -> bool:
    return plain == DEFAULT_PASSWORD

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

async def require_auth(
    authorization: Optional[str] = Header(None),
    access_token: Optional[str] = Cookie(None)
) -> str:
    token = access_token
    if authorization:
        scheme, _, value = authorization.partition(" ")
        if scheme.lower() == "bearer" and value:
            token = value
    if not token:
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
