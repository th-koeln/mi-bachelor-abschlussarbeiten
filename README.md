# Abschlussarbeiten Medieninformatik

Diese Web-Plattform dient zur Präsentation von Bachelor- und Masterarbeiten des Studiengangs Medieninformatik an der TH Köln, Campus Gummersbach.


## 💻 Installation & Entwicklung

### Option 1: Mit Docker

Die einfachste Methode, das Projekt lokal zu starten:

```bash
# Repository klonen
git clone https://github.com/th-koeln/mi-bachelor-abschlussarbeiten.git
cd mi-bachelor-abschlussarbeiten

# Container starten
docker-compose up

# Website öffnen über [http://localhost:4000](http://localhost:4000)
```

**Voraussetzungen:** Docker und Docker Compose

### Option 2: Lokale Installation

**Voraussetzungen:**
- Ruby >= 2.7 (für Jekyll)
- Node.js >= 18.x und npm (für Tailwind CSS)
- Bundler (`gem install bundler`)

**Installation:**

1. **Repository klonen**

   ```bash
   git clone https://github.com/th-koeln/mi-bachelor-abschlussarbeiten.git
   cd mi-bachelor-abschlussarbeiten
   ```

2. **Ruby-Abhängigkeiten installieren**

   ```bash
   bundle install
   ```

3. **Node.js-Abhängigkeiten installieren**

   ```bash
   npm install
   ```

4. **Development-Server starten**

   ```bash
   npm run dev
   ```

   Dies startet parallel:
   - Jekyll mit LiveReload auf `http://localhost:4000`
   - Tailwind CSS im Watch-Modus

   Alternativ können Sie die Prozesse auch separat starten:

   ```bash
   # Terminal 1: Tailwind CSS Watch
   npm run css:dev

   # Terminal 2: Jekyll Server
   npm run jekyll:serve
   ```

### Produktion Build

```bash
# CSS kompilieren und Jekyll-Website bauen
npm run build

# Ausgabe liegt in _site/
```

## ✍️ Neue Abschlussarbeit hinzufügen

### 1. Ordner erstellen

Erstellen Sie einen neuen Ordner in `_theses/` mit dem Format:

```
YYYY-MM-DD-titel-der-arbeit/
```

Beispiel: `2024-03-15-ki-gestuetzte-bildanalyse/`

### 2. Markdown-Datei anlegen

Erstellen Sie eine `index.md` Datei im neuen Ordner:

```markdown
---
layout: thesis
title: "Titel der Abschlussarbeit"
category: bachelor # oder "master"
date: 2024-03-15
firstname: "Max"
lastname: "Mustermann"
first_supervisor: "Prof. Dr. Erstbetreuer"
second_supervisor: "Prof. Dr. Zweitbetreuer"

# Bilder und Links
teaser_image_url: "teaser.jpg"
teaser_image_copyright: "Bildquelle / Copyright"
thesis_url: "thesis.pdf"
repository_url: "https://github.com/username/repo"
project_url: "https://demo.example.com"

# Kontaktdaten
personal_website_url: "https://example.com"
personal_social_media_urls:
  - "https://github.com/username"
  - "https://linkedin.com/in/username"

# Keywords
keywords:
  - Machine Learning
  - Computer Vision
  - Deep Learning

# Kooperationspartner
cooperation_partner: "Firmenname GmbH"
cooperation_partner_url: "https://firma.de"
---

## Abstract

Kurze Zusammenfassung der Arbeit...

```

### 3. Dateien hinzufügen (optional)

- **Vorschaubild**: `teaser.jpg` oder `teaser.png` 
  - **Format**: JPEG (.jpg/.jpeg) oder PNG (.png), auch WebP (.webp) wird unterstützt
  - **Auflösung**: 1920×1080px (16:9 Format) empfohlen
  - **Dateigröße**: Maximal 500 KB für optimale Ladezeiten
- **Ausarbeitung**: `thesis.pdf`
  ```

### 4. Testen und Committen

```bash
# Lokal testen
npm run dev

# Änderungen committen
git add _theses/2024-03-15-titel-der-arbeit/
git commit -m "Add thesis: Titel der Arbeit"
git push
```

## 🌐 API-Endpunkte

Die Plattform stellt folgende API-Endpunkte bereit:

- `/bachelor.json` - Alle Bachelorarbeiten
- `/master.json` - Alle Masterarbeiten
- `/index.json` - Alle Arbeiten kombiniert

## 📄 Lizenz

MIT License - siehe [LICENSE](LICENSE) Datei

---

**TH Köln** | Campus Gummersbach | Medieninformatik Bachelor & Master
