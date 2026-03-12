# Multi-stage Node.js 20+ und Ruby für Jekyll + Tailwind CSS
FROM ruby:3.3-slim

# Installiere Node.js 20.x
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    build-essential \
    git \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Setze Arbeitsverzeichnis
WORKDIR /app

# Kopiere Gemfile und package.json für Layer-Caching
COPY Gemfile* ./
COPY package*.json ./

# Installiere Ruby und Node.js Dependencies
RUN bundle install
RUN npm install

# Kopiere den Rest der Anwendung
COPY . .

# Exponiere Port 4000 für Jekyll und 35729 für LiveReload
EXPOSE 4000 35729

# Standard-Command für Development mit LiveReload
CMD ["npm", "run", "dev"]
