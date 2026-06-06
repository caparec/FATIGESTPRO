from pydantic import BaseModel, Field
from typing import List, Optional

class ClientSchema(BaseModel):
    cli_cod: str
    cli_raso: str
    cli_type: str = "ENTREPRISE"
    cli_tel: Optional[str] = None
    cli_email: Optional[str] = None
    cli_adr: Optional[str] = None
    cli_vil: Optional[str] = None
    cli_ice: Optional[str] = None
    cli_if: Optional[str] = None
    cli_rc: Optional[str] = None
    cli_patente: Optional[str] = None
    cli_rib: Optional[str] = None
    cli_banque: Optional[str] = None
    cli_mode_reg: str = "VIREMENT"
    cli_delai_reg: str = "COMPTANT"
    cli_actif: int = 1
    cli_abo_cadence: str = "AUCUNE"
    cli_abo_montant: float = 0
    cli_abo_next: Optional[str] = None
    cli_notes: str = ""

class ArticleSchema(BaseModel):
    art_cod: str
    art_lib: str
    art_faar: Optional[str] = None
    art_pracT: float = 0
    art_prveT: float = 0
    art_stk: float = 0

class LigneFacture(BaseModel):
    art_cod: str = ""
    art_lib: str = ""
    qte: float = Field(1, ge=0)
    pu: float = Field(0, ge=0)
    remise: float = Field(0, ge=0, le=100)

class FactureSchema(BaseModel):
    fac_cli_cod: str
    fac_dat: Optional[str] = None
    fac_mt_ht: float = Field(0, ge=0)
    fac_tva: float = Field(20.0, ge=0, le=100)
    fac_echeance: str = "30 jours"
    fac_etat: str = "BROUILLON"
    fac_type: str = "PONCTUEL"
    fac_notes: str = ""
    lignes: List[dict] = []

class ReglementSchema(BaseModel):
    reg_cli_cod: str
    reg_fac_num: Optional[int] = None
    reg_dat: Optional[str] = None
    reg_mt: float = Field(..., gt=0)
    reg_mode: str = "VIREMENT"
    reg_ref: Optional[str] = None

class AbonnementSchema(BaseModel):
    cli_cod: str
    cli_abo_cadence: str = "AUCUNE"
    cli_abo_montant: float = Field(0, ge=0)
    cli_abo_next: Optional[str] = None

class LoginRequest(BaseModel):
    username: str
    password: str

class TokenResponse(BaseModel):
    access_token: str
    token_type: str = "bearer"

class PaginatedResponse(BaseModel):
    items: list
    total: int
    page: int
    per_page: int
    pages: int
