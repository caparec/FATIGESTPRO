from io import BytesIO
from fastapi import HTTPException
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle
from reportlab.lib.pagesizes import A4
from reportlab.lib import colors
from reportlab.lib.units import mm
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from db import get_db
from services import to_dict, calc_tva, calc_ttc

def gen_pdf_facture(fac_num: int) -> BytesIO:
    with get_db() as db:
        fac = db.execute("""SELECT f.*, c.cli_raso, c.cli_ice, c.cli_if, c.cli_rc, c.cli_patente,
            c.cli_adr, c.cli_vil, c.cli_tel, c.cli_email, c.cli_rib, c.cli_banque, c.cli_mode_reg
            FROM m_fac f JOIN p_cli c ON f.fac_cli_cod = c.cli_cod WHERE f.fac_num=?""", (fac_num,)).fetchone()
        if not fac:
            raise HTTPException(404)
        lignes = db.execute("SELECT * FROM m_fac_ligne WHERE lig_fac_num=? ORDER BY lig_id", (fac_num,)).fetchall()
    fac = dict(fac)
    lignes = [dict(l) for l in lignes]

    buf = BytesIO()
    doc = SimpleDocTemplate(buf, pagesize=A4, rightMargin=15*mm, leftMargin=15*mm, topMargin=15*mm, bottomMargin=15*mm)
    styles = getSampleStyleSheet()
    styles.add(ParagraphStyle(name='Right', alignment=2))
    styles.add(ParagraphStyle(name='Small', fontSize=8, textColor=colors.grey))
    styles.add(ParagraphStyle(name='TitleBill', fontSize=22, fontName='Helvetica-Bold', textColor=colors.HexColor('#1e293b')))

    elems = []
    data_head = [
        [Paragraph("<b>FATIGEST PRO</b><br/><font size=8>Société de services</font>", styles['Normal']),
         Paragraph(f"<b>FACTURE N° {fac['fac_num']}</b><br/>Date: {fac['fac_dat']}<br/>Type: {fac.get('fac_type','PONCTUEL')}", ParagraphStyle('Right', alignment=2, fontSize=10))]
    ]
    elems.append(Table(data_head, colWidths=[260, 260]))
    elems.append(Spacer(1, 10*mm))

    cli_data = [
        [Paragraph(f"<b>Client:</b> {fac['cli_raso']}", styles['Normal']),
         Paragraph(f"<b>ICE:</b> {fac['cli_ice'] or '---'}<br/><b>IF:</b> {fac['cli_if'] or '---'}", styles['Small'])],
        [Paragraph(f"Adresse: {fac.get('cli_adr','')} {fac.get('cli_vil','')}", styles['Small']),
         Paragraph(f"RC: {fac['cli_rc'] or '---'} | Patente: {fac['cli_patente'] or '---'}", styles['Small'])],
    ]
    elems.append(Table(cli_data, colWidths=[260, 260]))
    elems.append(Spacer(1, 5*mm))

    tva_rate = fac.get('fac_tva', 20)
    header = [['N°', 'Désignation', 'Qté', 'P.U. HT', 'Total HT']]
    body = [[str(i+1), l['lig_art_lib'], str(l['lig_qte']), f"{l['lig_pu']:.2f}", f"{l['lig_qte']*l['lig_pu']:.2f}"] for i,l in enumerate(lignes)]
    if not lignes:
        body = [['1', 'Prestation', '1', f"{fac['fac_mt_ht']:.2f}", f"{fac['fac_mt_ht']:.2f}"]]
    mt_ht = fac['fac_mt_ht']
    mt_tva = calc_tva(mt_ht, tva_rate)
    mt_ttc = calc_ttc(mt_ht, tva_rate)
    body.append(['', '', '', 'Total HT', f"{mt_ht:.2f}"])
    body.append(['', '', '', f'TVA ({tva_rate:.0f}%)', f"{mt_tva:.2f}"])
    body.append(['', '', '', 'Total TTC', f"{mt_ttc:.2f}"])

    t = Table(header + body, colWidths=[25*mm, 180*mm, 25*mm, 40*mm, 40*mm])
    t.setStyle(TableStyle([
        ('FONTNAME', (0,0), (-1,0), 'Helvetica-Bold'), ('FONTSIZE', (0,0), (-1,0), 9),
        ('FONTSIZE', (0,1), (-1,-1), 8), ('GRID', (0,0), (-1,-4), 0.5, colors.grey),
        ('LINEBELOW', (0,-4), (-1,-4), 1, colors.black),
        ('LINEABOVE', (0,-3), (-1,-1), 0.5, colors.grey),
        ('ALIGN', (2,0), (-1,-1), 'RIGHT'),
        ('BACKGROUND', (0,0), (-1,0), colors.HexColor('#1e293b')),
        ('TEXTCOLOR', (0,0), (-1,0), colors.white),
        ('FONTNAME', (0,-3), (-1,-1), 'Helvetica-Bold'),
        ('FONTSIZE', (0,-3), (-1,-1), 10),
        ('ROWBACKGROUNDS', (0,1), (-1,-4), [colors.white, colors.HexColor('#f8fafc')]),
    ]))
    elems.append(t)
    elems.append(Spacer(1, 15*mm))

    footer_data = [
        [Paragraph(f"<b>Mode de règlement:</b> {fac['cli_mode_reg']}", styles['Small']),
         Paragraph(f"RIB: {fac['cli_rib'] or '---'}<br/>Banque: {fac['cli_banque'] or '---'}", styles['Small'] if fac.get('cli_rib') else ParagraphStyle('Hidden', fontSize=1))]
    ]
    elems.append(Table(footer_data, colWidths=[260, 260]))
    elems.append(Spacer(1, 5*mm))
    elems.append(Paragraph(f"Arrêtée la présente facture à la somme de <b>{mt_ttc:.2f} DH TTC</b>", styles['Normal']))
    elems.append(Spacer(1, 3*mm))
    elems.append(Paragraph(f"TVA au taux de {tva_rate:.0f}% - Régime: Renseignement", styles['Small']))

    doc.build(elems)
    buf.seek(0)
    return buf

def gen_pdf_devis(dev_num: int) -> BytesIO:
    with get_db() as db:
        dev = db.execute("""SELECT d.*, c.cli_raso, c.cli_ice, c.cli_if, c.cli_rc, c.cli_patente,
            c.cli_adr, c.cli_vil, c.cli_tel, c.cli_email, c.cli_rib, c.cli_banque, c.cli_mode_reg
            FROM m_devis d JOIN p_cli c ON d.dev_cli_cod = c.cli_cod WHERE d.dev_num=?""", (dev_num,)).fetchone()
        if not dev:
            raise HTTPException(404)
        lignes = db.execute("SELECT * FROM m_devis_ligne WHERE lig_dev_num=? ORDER BY lig_id", (dev_num,)).fetchall()
    dev = dict(dev)
    lignes = [dict(l) for l in lignes]

    buf = BytesIO()
    doc = SimpleDocTemplate(buf, pagesize=A4, rightMargin=15*mm, leftMargin=15*mm, topMargin=15*mm, bottomMargin=15*mm)
    styles = getSampleStyleSheet()
    styles.add(ParagraphStyle(name='Right', alignment=2))
    styles.add(ParagraphStyle(name='Small', fontSize=8, textColor=colors.grey))
    styles.add(ParagraphStyle(name='TitleBill', fontSize=22, fontName='Helvetica-Bold', textColor=colors.HexColor('#1e293b')))

    elems = []
    data_head = [
        [Paragraph("<b>FATIGEST PRO</b><br/><font size=8>Société de services</font>", styles['Normal']),
         Paragraph(f"<b>DEVIS N° {dev['dev_num']}</b><br/>Date: {dev['dev_dat']}<br/>Échéance: {dev.get('dev_echeance','30 jours')}", ParagraphStyle('Right', alignment=2, fontSize=10))]
    ]
    elems.append(Table(data_head, colWidths=[260, 260]))
    elems.append(Spacer(1, 10*mm))

    cli_data = [
        [Paragraph(f"<b>Client:</b> {dev['cli_raso']}", styles['Normal']),
         Paragraph(f"<b>ICE:</b> {dev['cli_ice'] or '---'}<br/><b>IF:</b> {dev['cli_if'] or '---'}", styles['Small'])],
        [Paragraph(f"Adresse: {dev.get('cli_adr','')} {dev.get('cli_vil','')}", styles['Small']),
         Paragraph(f"RC: {dev['cli_rc'] or '---'} | Patente: {dev['cli_patente'] or '---'}", styles['Small'])],
    ]
    elems.append(Table(cli_data, colWidths=[260, 260]))
    elems.append(Spacer(1, 5*mm))

    tva_rate = dev.get('dev_tva', 20)
    header = [['N°', 'Désignation', 'Qté', 'P.U. HT', 'Total HT']]
    body = [[str(i+1), l['lig_art_lib'], str(l['lig_qte']), f"{l['lig_pu']:.2f}", f"{l['lig_qte']*l['lig_pu']:.2f}"] for i,l in enumerate(lignes)]
    if not lignes:
        body = [['1', 'Prestation', '1', f"{dev['dev_mt_ht']:.2f}", f"{dev['dev_mt_ht']:.2f}"]]
    mt_ht = dev['dev_mt_ht']
    mt_tva = calc_tva(mt_ht, tva_rate)
    mt_ttc = calc_ttc(mt_ht, tva_rate)
    body.append(['', '', '', 'Total HT', f"{mt_ht:.2f}"])
    body.append(['', '', '', f'TVA ({tva_rate:.0f}%)', f"{mt_tva:.2f}"])
    body.append(['', '', '', 'Total TTC', f"{mt_ttc:.2f}"])

    t = Table(header + body, colWidths=[25*mm, 180*mm, 25*mm, 40*mm, 40*mm])
    t.setStyle(TableStyle([
        ('FONTNAME', (0,0), (-1,0), 'Helvetica-Bold'), ('FONTSIZE', (0,0), (-1,0), 9),
        ('FONTSIZE', (0,1), (-1,-1), 8), ('GRID', (0,0), (-1,-4), 0.5, colors.grey),
        ('LINEBELOW', (0,-4), (-1,-4), 1, colors.black),
        ('LINEABOVE', (0,-3), (-1,-1), 0.5, colors.grey),
        ('ALIGN', (2,0), (-1,-1), 'RIGHT'),
        ('BACKGROUND', (0,0), (-1,0), colors.HexColor('#1e293b')),
        ('TEXTCOLOR', (0,0), (-1,0), colors.white),
        ('FONTNAME', (0,-3), (-1,-1), 'Helvetica-Bold'),
        ('FONTSIZE', (0,-3), (-1,-1), 10),
        ('ROWBACKGROUNDS', (0,1), (-1,-4), [colors.white, colors.HexColor('#f8fafc')]),
    ]))
    elems.append(t)
    elems.append(Spacer(1, 15*mm))

    footer_data = [
        [Paragraph(f"<b>Mode de règlement:</b> {dev['cli_mode_reg']}", styles['Small']),
         Paragraph(f"RIB: {dev['cli_rib'] or '---'}<br/>Banque: {dev['cli_banque'] or '---'}", styles['Small'] if dev.get('cli_rib') else ParagraphStyle('Hidden', fontSize=1))]
    ]
    elems.append(Table(footer_data, colWidths=[260, 260]))
    elems.append(Spacer(1, 5*mm))
    elems.append(Paragraph(f"Arrêté le présent devis à la somme de <b>{mt_ttc:.2f} DH TTC</b>", styles['Normal']))
    elems.append(Spacer(1, 3*mm))
    elems.append(Paragraph(f"TVA au taux de {tva_rate:.0f}% - Régime: Renseignement", styles['Small']))
    elems.append(Spacer(1, 5*mm))
    elems.append(Paragraph("Devis valable 30 jours à compter de la date d'émission", styles['Small']))

    doc.build(elems)
    buf.seek(0)
    return buf
