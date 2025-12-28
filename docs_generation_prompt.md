# Prompt Template pour la Documentation Automatisée de Modules

Utilisez ce prompt pour générer la structure de documentation pour un nouveau module (ex: SC945D). Copiez-collez ce texte dans votre assistant IA, en fournissant la liste des fichiers de votre dossier.

---

**Contexte**
Je souhaite publier la documentation technique d'un nouveau module hardware (ex: `SC9xx`) pour le projet Open Source **Essensys**.
Je dispose des fichiers bruts (Export Altium, PDFs, STEP, Gerbers) dans le répertoire courant.
Mon objectif est de créer un site statique **MkDocs** (thème Material) pour permettre aux utilisateurs de visualiser l'architecture et de télécharger les fichiers de fabrication.

**Fichiers disponibles (Input)**
*(Collez ici la liste de vos fichiers, par exemple :)*
- `Schematic PDF.pdf`
- `STEP_forSIxxxx.step`
- `Gerber for SIxxxx.zip`
- `Assembly Drawings_[No Variations]`
- `BOM_[No Variations].csv`
- `SCxxxx` (Dossier sources)

**Tes instructions :**

1.  **Organisation des Fichiers (Assets)**
    *   Crée l'arborescence `docs/assets/` avec les sous-dossiers : `models/`, `manufacturing/`, `pdfs/`, `images/`.
    *   Renomme et déplace le fichier STEP vers `docs/assets/models/[NOM_MODULE].step`.
    *   Renomme et déplace le fichier ZIP des Gerbers vers `docs/assets/manufacturing/[NOM_MODULE]_Gerbers.zip`.
    *   Renomme et déplace les PDFs (Schéma, Assembly) vers `docs/assets/pdfs/`.
    *   Copie le PDF du schéma à la racine de `docs/assets/` sous le nom `[NOM_MODULE]_Schematic.pdf` pour un accès rapide.

2.  **Génération d'Images (Prévisualisation)**
    *   Si l'outil `pdftoppm` est disponible, extrais **toutes les pages** des PDFs (Schéma et Assembly) en PNG.
    *   Place-les dans `docs/assets/images/` (ex: `schematic-01.png`, `assembly-01.png`).

3.  **Création du contenu Markdown (`docs/`)**
    *   `index.md`: Page d'accueil. Doit contenir :
        *   Une introduction "Open Source Hardware".
        *   La section "Aperçu du schéma" affichant une sélection ou la totalité des images générées.
        *   Une liste des sections avec des émojis **Unicode** (🏛️ Architecture, 🔌 Hardware, 💾 Téléchargements).
    *   `downloads.md`: Page de téléchargements avec un tableau ou liste à cocher pour :
        *   📂 Schéma PDF
        *   📦 Modèle 3D (STEP)
        *   🏭 Fichiers de Fabrication (Gerbers ZIP)
    *   `hardware.md` et `architecture.md`: Crée les fichiers squelettes.

4.  **Documentation Firmware (`docs/firmware.md`)**
    *   Si un dossier de code source est présent, analyse le code pour expliquer le fonctionnement du module.
    *   **Contexte du module** : Le SC945D est un petit écran tactile pour gérer la domotique Essensys, propulsé par un contrôleur graphique 4D Systems PICASO-GFX2.
    *   Crée `firmware.md` décrivant :
        *   L'environnement de build.
        *   L'architecture logicielle (Event loops, UI Framework si applicable).
        *   Le protocole de communication avec les autres boards et le serveur.
        *   La gestion de l'affichage tactile et des interactions utilisateur.
        *   L'algorithme de démarrage.

5.  **Configuration (`mkdocs.yml`)**
    *   Génère le fichier `mkdocs.yml` complet configuré avec le thème `material` et la structure de navigation correspondante.

6.  **Pipeline CI/CD (`.github/workflows/publish.yml`)**
    *   Crée un workflow GitHub Actions pour déployer la documentation sur GitHub Pages.
    *   Utilise `actions/setup-python`, installe `mkdocs-material` et lance `mkdocs gh-deploy --force`.

7.  **Règles Importantes**
    *   Utilise des **émojis Unicode** directs (ex: 💾) et PAS de shortcodes (ex: `:floppy_disk:`) pour éviter les problèmes de rendu.
    *   Écris tout le contenu en **Français**.
    *   Reste factuel et technique.

 