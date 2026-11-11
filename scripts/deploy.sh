#!/bin/bash
# Indique que le script doit être exécuté avec bash

# Va dans le dossier du site ; si le dossier n'existe pas, le script s'arrête (code d'erreur 1)
cd ~/serveur/site-equipe || exit 1

# Récupère les dernières modifications depuis GitHub
git pull

# Copie la page et le style dans le dossier servi par nginx (sudo car /var/www/html est protégé)
sudo cp index.html style.css /var/www/html/

# Affiche un message pour dire que le déploiement est terminé
echo "Déploiement terminé !"
