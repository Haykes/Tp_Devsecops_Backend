# Utilisez une image Node officielle comme image de base
FROM node:16

# Créez un répertoire de travail
WORKDIR /usr/src/app

# Copiez le fichier package.json et package-lock.json
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez le reste des fichiers de l'application
COPY . .

# Exposez le port que l'application utilisera
EXPOSE 8080

# Commande pour démarrer l'application
CMD ["node", "src/server.js"]
