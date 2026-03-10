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

### Production build

```bash
# CSS kompilieren und Jekyll-Website bauen
npm run build

# Ausgabe liegt in _site/
```

## ✍️ Neue Abschlussarbeit hinzufügen

### 1. Repository forken und klonen

Erstellen Sie einen Fork des Repositories

1. Öffnen Sie https://github.com/th-koeln/mi-bachelor-abschlussarbeiten
2. Klicken Sie auf den **"Fork"**-Button oben rechts
3. Klonen Sie Ihren Fork lokal:

```bash
git clone https://github.com/IHR-USERNAME/mi-bachelor-abschlussarbeiten.git
cd mi-bachelor-abschlussarbeiten
```

**Workflow ohne GitHub-Account:**
Falls Sie keinen GitHub-Account haben, können Sie den Ordner mit allen benötigten Dateien (siehe folgende Schritte) erstellen und per E-Mail an die betreuende Person Ihrer Abschlussarbeit senden. Diese wird die Veröffentlichung für Sie übernehmen.

### 2. Ordner erstellen

Erstellen Sie einen neuen Ordner in `_theses/` mit dem Format:

```
YYYY-MM-DD-titel-der-arbeit/
```

Beispiel: `2024-03-15-ki-gestuetzte-bildanalyse/`

### 3. Markdown-Datei anlegen

Erstellen Sie eine `index.md` Datei im neuen Ordner:

```markdown
---
layout: thesis
title: "Titel der Abschlussarbeit"
category: bachelor # oder "master"
date: 2024-03-15 (Abgabedatum der Arbeit)
firstname: "Max"
lastname: "Mustermann"
first_supervisor: "Prof. Dr. Erstbetreuer"
second_supervisor: "Prof. Dr. Zweitbetreuer"

# Bilder und Links
teaser_image_url: "teaser.jpg"
teaser_image_copyright: "Bildquelle / Copyright"
thesis_url: "thesis.pdf"
repository_url: "https://github.com/username/repo" (optional)
project_url: "https://demo.example.com" (optional)

# Kontaktdaten (optional)
personal_website_url: "https://example.com"
personal_social_media_urls:
  - "https://github.com/username"
  - "https://linkedin.com/in/username"

# Keywords
keywords:
  - Machine Learning
  - Computer Vision
  - Deep Learning

# Kooperationspartner (optional)
cooperation_partner: "Firmenname GmbH"
cooperation_partner_url: "https://firma.de"
---

## Abstract

Kurze Zusammenfassung der Arbeit...

```

### 4. Dateien hinzufügen

- **Vorschaubild**:,
  - **Format**: JPEG (.jpg/.jpeg), PNG (.png) oder WebP (.webp)
  - **Auflösung**: 1920×1080px (16:9 Format) empfohlen
  - **Dateigröße**: Maximal 300 KB für optimale Ladezeiten
  - **Dateiname**: `teaser-image.jpg` (oder .png/.webp, entsprechend der `teaser_image_url` in der Markdown-Datei)
- **Ausarbeitung**: `thesis_vorname-nachname_titel-der-arbeit.pdf` (PDF-Datei der Abschlussarbeit)

### 5. Testen

```bash
# Lokal testen
npm run dev

# Website öffnen über http://localhost:4000
```

### 6. Pull Request erstellen (nur für GitHub-Nutzer)

```bash
# Änderungen committen
git add _theses/2024-03-15_vorname-nachname/
git commit -m "Add thesis: Titel der Arbeit"
git push origin main
```

Anschließend:
1. Öffnen Sie Ihren Fork auf GitHub
2. Klicken Sie auf **"Contribute"** → **"Open Pull Request"**
3. Beschreiben Sie kurz Ihre Änderungen
4. Senden Sie den Pull Request ab

**Alternative ohne GitHub-Account:**  
Senden Sie den kompletten Ordner `2024-03-15_vorname-nachname` mit allen Dateien per E-Mail an die betreuenden Personen Ihrer Abschlussarbeit.

## 🌐 API-Endpunkte

Die Plattform stellt folgende API-Endpunkte bereit:

- `/bachelor.json` - Alle Bachelorarbeiten
- `/master.json` - Alle Masterarbeiten
- `/index.json` - Alle Arbeiten kombiniert

## 📄 Lizenz

MIT License - siehe [LICENSE](LICENSE) Datei

## 📞 Kontakt

Bei Fragen oder Anmerkungen wenden Sie sich bitte an  
[Volker Schaefer](https://www.th-koeln.de/personen/volker.schaefer/)

Bei Fehlern oder Verbesserungsvorschlägen können Sie auch gerne ein Issue auf GitHub erstellen:  
- **Issues**: https://github.com/th-koeln/mi-bachelor-abschlussarbeiten/issues

---

[TH Köln Campus Gummersbach](https://www.th-koeln.de/hochschule/campus-gummersbach_76496.php) | [Medieninformatik Bachelor & Master](https://www.medieninformatik.th-koeln.de)
