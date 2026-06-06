# Prompts d'amélioration graphique — FATIGEST Pro

> Collection de prompts à utiliser avec Claude (ou tout LLM) pour refondre et améliorer l'interface utilisateur de FATIGEST Pro, fichier par fichier, composant par composant.

---

## Comment utiliser ce fichier

Chaque section correspond à un aspect graphique précis. Copiez le prompt dans une nouvelle conversation avec Claude, collez le code concerné à la suite, et laissez Claude produire la version améliorée. Les prompts sont ordonnés du plus impactant au plus fin.

---

## 1. Système de design — variables CSS globales

### Objectif
Centraliser toutes les couleurs, typographies, espacements et ombres dans un bloc de variables CSS réutilisables. Remplacer les valeurs codées en dur dispersées dans tout `index.html`.

### Prompt

```
Tu es un expert UI/UX spécialisé en applications de gestion (ERP, facturation).

Analyse le bloc <style> de ce fichier index.html et génère un système de design complet sous forme de variables CSS :

1. Palette de couleurs : primaire, secondaire, accent, succès, danger, avertissement, info — chacune en teinte normale, claire et foncée.
2. Couleurs sémantiques de surface : fond de page, fond de carte, fond de sidebar, fond de tableau (lignes paires/impaires), fond de modal.
3. Couleurs de texte : primaire, secondaire, tertiaire, inversé (sur fond sombre), lien.
4. Typographie : 1 seule famille sans-serif moderne (Inter ou System UI), avec une échelle de tailles (xs, sm, base, lg, xl, 2xl) et de graisses (400, 500, 600).
5. Espacements : échelle de 4px à 64px (4, 8, 12, 16, 20, 24, 32, 40, 48, 64).
6. Rayons de bordure : sm (4px), md (8px), lg (12px), full (9999px).
7. Ombres : légère (cartes), moyenne (modales), forte (menus flottants).
8. Transitions : durée standard 150ms ease, durée longue 300ms ease.
9. Z-index : sidebar, header, modal, tooltip, notification.
10. Mode sombre : fournir un bloc @media (prefers-color-scheme: dark) complet qui redéfinit toutes les variables de surface et de texte.

Exigences :
- Toutes les variables dans :root et [data-theme="dark"].
- Nommage en kebab-case descriptif : --color-surface-card, --color-text-muted, etc.
- Inclure un commentaire de section pour chaque groupe.
- Ne pas générer d'autres CSS, uniquement le bloc de variables.

Voici le bloc <style> actuel :
[COLLER LE CONTENU DU BLOC <style> ICI]
```

---

## 2. Sidebar de navigation

### Objectif
Transformer la navigation latérale en une sidebar moderne, avec icônes, labels, indicateur d'élément actif, section utilisateur en bas et comportement rétractable.

### Prompt

```
Tu es un expert en design d'interfaces de gestion d'entreprise.

Refonds complètement la sidebar de navigation de ce fichier index.html en HTML + CSS pur (pas de framework).

Exigences visuelles :
- Largeur fixe 240px (état ouvert), 64px (état rétracté, icônes seules).
- Fond : couleur sombre distincte du fond principal (ex: #1a1d23 en dark, #f8f9fa en light).
- Logo / nom de l'application en haut, avec icône à gauche.
- Items de navigation : icône SVG outline 20px + label texte, padding 10px 16px, border-radius 8px.
- État actif : fond coloré (couleur primaire à 12% d'opacité), texte et icône en couleur primaire, bordure gauche 3px pleine.
- État hover : fond légèrement plus clair, transition 150ms.
- Groupes de sections avec séparateurs et titres de groupe en 10px uppercase (ex: "FACTURATION", "ADMINISTRATION").
- Section utilisateur en bas fixe : avatar initiales colorées, nom de l'utilisateur, rôle en sous-texte, bouton déconnexion.
- Bouton toggle (hamburger / flèche) pour rétracter/étendre.
- En mode rétracté : tooltips au hover sur chaque icône.
- Entièrement responsive : sur mobile, la sidebar devient un drawer qui s'ouvre par-dessus le contenu avec overlay sombre.

Contraintes :
- CSS avec les variables définies dans :root (utiliser var(--color-*, --space-*, --radius-*)).
- Transitions fluides sur l'ouverture/fermeture (transform + width, 250ms ease).
- JavaScript minimal intégré pour le toggle.
- Pas de dépendances externes.

Voici le code actuel de la sidebar :
[COLLER LE HTML DE LA SIDEBAR ICI]
```

---

## 3. Header / barre supérieure

### Objectif
Créer un header propre avec barre de recherche globale, breadcrumb, notifications et menu utilisateur.

### Prompt

```
Refonds le header de cette application de facturation en HTML + CSS moderne.

Structure attendue (de gauche à droite) :
- Breadcrumb dynamique : "Accueil > Clients > Dupont SARL" en texte léger, séparateurs chevron.
- Barre de recherche globale centrée : input avec icône loupe, placeholder "Rechercher client, facture, règlement…", bord arrondi 9999px, fond neutre, focus avec anneau coloré.
- Zone droite : icône cloche (notifications) avec badge rouge compteur, séparateur vertical, avatar utilisateur + nom + chevron (menu déroulant au click).

Exigences visuelles :
- Hauteur 60px, fond blanc (light) / #1e2128 (dark), border-bottom 1px.
- Box-shadow légère en bas : 0 1px 3px rgba(0,0,0,0.08).
- Menu déroulant utilisateur : card flottante, border-radius 12px, ombre moyenne, items avec icônes, séparateur avant "Déconnexion" en rouge.
- Panel notifications : drawer flottant à droite, liste de notifications avec point coloré (non lu), timestamp relatif ("il y a 2h"), bouton "Tout marquer comme lu".
- Animation d'apparition des menus : fade + translateY(-4px) → translateY(0), 150ms ease.

CSS : utiliser les variables du système de design. JavaScript intégré pour les toggles.

Voici le header actuel :
[COLLER LE CODE DU HEADER ICI]
```

---

## 4. Dashboard — cartes de statistiques

### Objectif
Remplacer les cartes de stats basiques par des cartes modernes avec tendance, sparkline et couleur sémantique.

### Prompt

```
Refonds les cartes de statistiques du tableau de bord de cette application de facturation.

Chaque carte doit afficher :
- Icône dans un carré coloré arrondi (20% d'opacité de fond, icône pleine de la couleur), en haut à gauche.
- Valeur principale : grand chiffre (28px, font-weight 600).
- Label descriptif sous la valeur : "Chiffre d'affaires du mois", "Factures en attente", etc.
- Indicateur de tendance en bas : flèche haut/bas + pourcentage + texte "vs mois précédent", coloré en vert si positif, rouge si négatif.
- Optionnellement : mini sparkline SVG sur 7 jours en bas de carte (tracé simple, pas d'axes).

Exigences visuelles :
- Fond : blanc (light) / surface-card (dark), border-radius 12px, border 1px var(--color-border).
- Ombre légère, hover : ombre légèrement plus prononcée + translateY(-2px), transition 200ms.
- Grille responsive : 4 colonnes sur desktop, 2 sur tablette, 1 sur mobile.
- Palette sémantique : CA = bleu, factures émises = violet, règlements = vert, impayés = rouge/orange.
- Pas de gradients sauf pour l'icône background (couleur à 15% opacité).

Générer le HTML + CSS + le JavaScript pour animer les compteurs (count-up de 0 à la valeur finale, 800ms ease-out).

Voici les cartes actuelles :
[COLLER LE HTML DES CARTES STATS ICI]
```

---

## 5. Tableaux de données

### Objectif
Transformer les tableaux HTML bruts en tableaux modernes avec tri, états vides, lignes interactives et badges de statut.

### Prompt

```
Tu es un designer UI spécialisé en tableaux de données pour applications métier.

Refonds complètement le style des tableaux de données de cette application (clients, factures, règlements).

Exigences visuelles :
- En-têtes : fond légèrement coloré, texte 11px uppercase letter-spacing, icône de tri (↑↓ neutre, ↑ ou ↓ actif en couleur primaire), cursor pointer.
- Lignes : hauteur 48px minimum, border-bottom 1px var(--color-border) à 50% opacité, hover fond très léger.
- Alternance optionnelle : lignes paires légèrement plus sombres (peut être désactivée).
- Première colonne : texte en font-weight 500, couleur primaire si c'est un lien cliquable.
- Colonnes montants : alignées à droite, police monospace, couleur sémantique (vert si payé, rouge si impayé, orange si partiel).
- Badges de statut : pill arrondi (border-radius 9999px), 5 états — Brouillon (gris), Émise (bleu), Partiellement payée (orange), Payée (vert), En retard (rouge). Fond à 15%, texte dans la teinte foncée.
- Colonne actions : boutons icône-seule (voir, modifier, supprimer), visibles seulement au hover de la ligne.
- État vide : illustration SVG centrée + texte "Aucun résultat" + bouton d'action primaire si applicable.
- État chargement : skeleton loader — barres grises animées (shimmer) à la place des cellules.
- Sélection de lignes : checkbox en première colonne, fond bleu clair sur la ligne sélectionnée.
- Toolbar au-dessus du tableau : champ de recherche, filtres, bouton d'export, compteur "X résultats".

CSS : utiliser les variables système. Pas de framework.

Voici le tableau actuel :
[COLLER LE HTML DU TABLEAU ICI]
```

---

## 6. Formulaires et champs de saisie

### Objectif
Uniformiser tous les champs de formulaire avec états visuels clairs (focus, erreur, succès, désactivé).

### Prompt

```
Refonds le système de formulaires de cette application de facturation (création client, création facture, règlement).

Concevoir un composant de champ réutilisable avec :
- Structure HTML : <div class="field"> > <label> + <input> (ou select, textarea) + <span class="hint"> + <span class="error">.
- Label : 13px, font-weight 500, couleur text-secondary, margin-bottom 6px, affichage block.
- Input : hauteur 40px, border 1px var(--color-border), border-radius 8px, padding 0 12px, font-size 14px, fond var(--color-surface-input), couleur text-primary.
- État focus : border-color var(--color-primary), box-shadow 0 0 0 3px var(--color-primary-alpha-20), outline none.
- État erreur : border-color var(--color-danger), box-shadow 0 0 0 3px var(--color-danger-alpha-20), message d'erreur en rouge 12px sous le champ avec icône ⚠.
- État succès : border-color var(--color-success), icône ✓ dans le champ à droite.
- État désactivé : opacité 0.5, cursor not-allowed, fond légèrement différent.
- Select : flèche personnalisée SVG à droite, même style que input.
- Textarea : resize vertical uniquement, min-height 80px.
- Champ montant : préfixe "MAD" ou "€" dans une capsule grisée à gauche (input-group).
- Champ date : icône calendrier cliquable à droite.
- Champ recherche avec autocomplétion : liste déroulante sous le champ, items avec avatar initiales + nom + sous-texte, hover coloré, border-radius 8px, ombre moyenne.

Générer aussi les styles de boutons :
- Primaire : fond var(--color-primary), texte blanc, hover légèrement plus foncé, active légèrement plus foncé encore.
- Secondaire : fond transparent, border 1px, hover fond léger.
- Danger : fond var(--color-danger).
- Ghost : fond transparent, pas de border, hover fond léger.
- Tailles : sm (32px), md (40px, défaut), lg (48px).
- État chargement : spinner animé à la place du texte, disabled.

Voici les formulaires actuels :
[COLLER LE HTML DES FORMULAIRES ICI]
```

---

## 7. Modales et panneaux latéraux

### Objectif
Remplacer les boîtes de dialogue basiques par des modales élégantes avec animations et panneau latéral (drawer) pour les formulaires complexes.

### Prompt

```
Refonds le système de modales et drawers de cette application de gestion.

Modale standard (confirmations, alertes) :
- Overlay : fond rgba(0,0,0,0.5), backdrop-filter blur(4px).
- Boîte : max-width 480px, border-radius 16px, fond surface-card, ombre forte, centré verticalement.
- Header : icône colorée (danger/info/succès) + titre 18px font-weight 600 + bouton fermer (×) à droite.
- Body : texte descriptif 14px text-secondary, line-height 1.6.
- Footer : boutons alignés à droite, bouton annuler en secondaire, bouton confirmer en primaire (ou danger).
- Animation : fade-in + scale(0.95→1), 200ms cubic-bezier(0.34, 1.56, 0.64, 1).

Drawer latéral (formulaires création/édition) :
- Largeur 480px sur desktop, 100% sur mobile.
- Slide-in depuis la droite : translateX(100%→0), 300ms ease.
- Header fixe : titre + sous-titre + bouton fermer.
- Body scrollable avec padding 24px.
- Footer fixe : boutons d'action, border-top.
- Overlay sombre derrière, click ferme le drawer.

Toast / notifications :
- Position : coin bas-droit, stack vertical avec gap 8px.
- Types : succès (vert), erreur (rouge), avertissement (orange), info (bleu).
- Structure : icône + message + bouton fermer optionnel.
- Auto-dismiss : 4 secondes, barre de progression animée en bas.
- Animation entrée : slideInRight + fade, sortie : fadeOut + shrink height.
- border-radius 10px, ombre moyenne, max-width 380px.

CSS + JavaScript intégré pour toutes les animations. Pas de dépendances.

Voici les modales actuelles :
[COLLER LE CODE DES MODALES ICI]
```

---

## 8. Page de login

### Objectif
Créer une page de connexion professionnelle à deux colonnes avec identité visuelle de l'application.

### Prompt

```
Crée une page de connexion complète et moderne pour une application de gestion de facturation appelée "FATIGEST Pro".

Mise en page deux colonnes (desktop) :
- Colonne gauche (40%) : fond coloré (dégradé subtil de la couleur primaire), logo centré, slogan de l'application, liste de 3 fonctionnalités clés avec icônes, copyright en bas.
- Colonne droite (60%) : fond blanc/neutre, formulaire centré verticalement.

Formulaire de connexion :
- Titre "Connexion" 28px font-weight 600 + sous-titre "Bienvenue sur FATIGEST Pro".
- Champ identifiant avec icône utilisateur.
- Champ mot de passe avec icône cadenas et toggle afficher/masquer (icône œil).
- Case à cocher "Se souvenir de moi" + lien "Mot de passe oublié ?" aligné à droite.
- Bouton connexion pleine largeur, hauteur 48px, avec état chargement (spinner).
- Message d'erreur animé sous le bouton si identifiants incorrects.

Exigences visuelles :
- Responsive : sur mobile, une seule colonne, logo en haut, formulaire en dessous.
- Fond de page : motif géométrique très subtil ou texture légère (SVG inline).
- Couleurs : utiliser la palette de l'application (primaire bleu-vert ou violet selon le thème).
- Animations : apparition du formulaire avec fade + translateY(20px→0) au chargement.
- Mode sombre : adapté automatiquement.

HTML + CSS + JavaScript intégré. Aucune dépendance externe.
```

---

## 9. Impression et PDF — mise en page facture

### Objectif
Améliorer le rendu visuel des factures générées (HTML pour impression / PDF via ReportLab).

### Prompt

```
Tu es un designer spécialisé en documents commerciaux (factures, devis, bons de commande).

Refonds la mise en page HTML de la facture de FATIGEST Pro pour une impression A4 professionnelle.

Structure de la facture :
1. En-tête : logo à gauche (espace réservé), bloc entreprise (nom, adresse, téléphone, email, ICE) à droite.
2. Bandeau titre : "FACTURE" en grandes lettres, numéro facture, date d'émission, date d'échéance.
3. Bloc destinataire : "Facturer à" + nom client, adresse, ICE client — dans un encadré discret.
4. Tableau de lignes : colonnes Désignation, Qté, Prix unitaire HT, Remise %, Montant HT. En-tête avec fond coloré primaire, lignes alternées.
5. Bloc totaux aligné à droite : Total HT, TVA (taux et montant), Total TTC en gras et plus grand.
6. Conditions de règlement : mode de paiement, RIB si virement, délai.
7. Pied de page : texte légal, numéro de page, mentions obligatoires (RC, IF, TP, ICE).

Exigences :
- CSS @media print optimisé : aucun fond coloré sauf l'en-tête de tableau (print-color-adjust: exact).
- Saut de page automatique si le tableau dépasse une page.
- Typographie lisible à l'impression : 10pt corps, 8pt légendes.
- Palette sobre : une seule couleur d'accent (le bleu primaire de l'application), tout le reste en noirs et gris.
- Numéro de facture et montant TTC mis en évidence visuellement.
- Filigrane optionnel "BROUILLON" en diagonale si la facture n'est pas encore validée.

Fournir le HTML + CSS complet prêt à être converti en PDF.
```

---

## 10. Micro-interactions et polish final

### Objectif
Ajouter les micro-interactions, animations et détails qui font passer une interface de "fonctionnelle" à "soignée".

### Prompt

```
Tu es un expert en micro-interactions et animation UI. Analyse cette interface de gestion et ajoute les animations et interactions manquantes.

Liste des micro-interactions à implémenter :

1. Boutons : ripple effect au click (onde qui se propage depuis le point de clic), 400ms.
2. Chargement de page : skeleton screens animés (shimmer gradient de gauche à droite, 1.5s infini) pour toutes les sections asynchrones.
3. Transitions de navigation : fade de 150ms entre les sections/pages de la SPA.
4. Compteurs animés : les valeurs numériques du dashboard comptent de 0 à leur valeur cible, 800ms ease-out, au premier affichage (IntersectionObserver).
5. Tableaux : apparition des lignes en cascade (staggered), chaque ligne avec un délai de 30ms × son index, translateY(8px→0) + opacity(0→1).
6. Formulaires : label flottant qui remonte au-dessus du champ quand celui-ci est focus ou rempli (floating label pattern).
7. Validation en temps réel : debounce 300ms, icône ✓ verte ou ⚠ rouge dans le champ dès la saisie.
8. Drag and drop sur les lignes de facture : poignée de déplacement visible au hover, feedback visuel sur le drop target.
9. Tooltips : apparition après 500ms de hover, fade 150ms, positionnement automatique (au-dessus ou en dessous selon l'espace disponible).
10. Copie dans le presse-papiers : bouton qui change temporairement en "Copié ✓" pendant 2 secondes.
11. Scroll infini ou pagination douce : apparition progressive des nouvelles lignes chargées.
12. Thème sombre/clair : toggle avec animation de transition (tous les fonds et textes transitionnent en 300ms, pas de flash).

Contraintes :
- JavaScript vanilla uniquement, pas de librairies d'animation.
- Respecter prefers-reduced-motion : toutes les animations désactivées si l'utilisateur a choisi ce paramètre.
- Performance : utiliser uniquement transform et opacity pour les animations (GPU-composited), jamais top/left/width/height.

Voici le fichier index.html actuel :
[COLLER LE CODE ICI]
```

---

## Ordre d'exécution recommandé

```
1. Variables CSS (section 1)          → fondation, tout le reste en dépend
2. Formulaires et boutons (section 6) → utilisés partout
3. Tableaux (section 5)               → cœur de l'interface
4. Dashboard / stats (section 4)      → première page vue
5. Sidebar (section 2)                → navigation permanente
6. Header (section 3)                 → présent sur toutes les vues
7. Modales et drawers (section 7)     → interactions secondaires
8. Page de login (section 8)          → première impression
9. Impression / PDF (section 9)       → livrable client
10. Micro-interactions (section 10)   → polish final
```

---

## Conseils généraux à inclure dans chaque prompt

Ajoutez ces instructions à n'importe quel prompt pour améliorer la cohérence des résultats :

```
Règles à respecter dans tout le code généré :
- Utiliser uniquement les variables CSS définies dans :root (var(--...)).
- Mobile-first : styles de base pour mobile, media queries pour desktop (min-width: 768px, 1024px).
- Accessibilité : attributs aria-label sur les boutons icône-seule, role="alert" sur les messages d'erreur, focus-visible visible et cohérent.
- Pas de valeurs magiques : toutes les couleurs, tailles et espacements via variables.
- Commentaires de section dans le CSS pour repérer facilement les composants.
- JavaScript : pas de var, utiliser const/let, événements avec addEventListener.
- Compatibilité : Chrome 90+, Firefox 88+, Safari 14+. Pas de préfixes vendor sauf si nécessaire.
```

---

*Document de référence — Refonte graphique FATIGEST Pro · Juin 2026*
