# Abschlussarbeiten Medieninformatik

Diese Web-Plattform dient zur Präsentation von Bachelor- und Masterarbeiten des Studiengangs Medieninformatik an der TH Köln, Campus Gummersbach.

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

## 💻 Installation & Entwicklung

Eine ausführliche Anleitung zur Installation und Entwicklung finden Sie in der [Developer Dokumentation](DEVELOPER.md).

## 🌐 API-Endpunkte

Informationen zu den verfügbaren API-Endpunkten finden Sie in der [Developer Dokumentation](DEVELOPER.md#-api-endpunkte).


## 📄 Lizenz

MIT License - siehe [LICENSE](LICENSE) Datei

## 📞 Kontakt

Bei Fragen oder Anmerkungen wenden Sie sich bitte an [Volker Schaefer](https://www.th-koeln.de/personen/volker.schaefer/).

Bei Fehlern oder Verbesserungsvorschlägen können Sie auch gerne ein [Issue auf GitHub erstellen](https://github.com/th-koeln/mi-bachelor-abschlussarbeiten/issues/new).  

---

[TH Köln Campus Gummersbach](https://www.th-koeln.de/hochschule/campus-gummersbach_76496.php) | [Medieninformatik Bachelor & Master](https://www.medieninformatik.th-koeln.de)
