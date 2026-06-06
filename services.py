from typing import Optional

def calc_ttc(mt_ht: float, tva_rate: float = 20.0) -> float:
    return mt_ht * (1 + tva_rate / 100)

def calc_tva(mt_ht: float, tva_rate: float = 20.0) -> float:
    return mt_ht * tva_rate / 100

def calc_montant_lignes(lignes: list[dict]) -> float:
    def ligne_mt(l):
        base = l.get("montant", l.get("qte", 1) * l.get("pu", 0))
        remise = l.get("remise", 0)
        return base * (1 - remise / 100)
    return sum(ligne_mt(l) for l in lignes)

def to_dict(row) -> Optional[dict]:
    return dict(row) if row else None

def paginate(items: list, page: int = 1, per_page: int = 50) -> dict:
    total = len(items)
    pages = max(1, (total + per_page - 1) // per_page)
    start = (page - 1) * per_page
    end = start + per_page
    return {
        "items": items[start:end],
        "total": total,
        "page": page,
        "per_page": per_page,
        "pages": pages,
    }
