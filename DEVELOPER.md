# Developer Dokumentation

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

### Production Build

```bash
# CSS kompilieren und Jekyll-Website bauen
npm run build

# Ausgabe liegt in _site/
```

## 🌐 API-Endpunkte

Die Plattform stellt folgende API-Endpunkte bereit:

- `/bachelor.json` - Alle Bachelorarbeiten
- `/master.json` - Alle Masterarbeiten
- `/index.json` - Alle Arbeiten kombiniert
