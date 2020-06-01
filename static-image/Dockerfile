# Serveur HTTP Apache
FROM httpd:2.4
# Mettre à jour le gestionnaire de paquet et installer plusieurs outils
RUN apt-get update && apt-get install -y vim nano
# Copie Source vers Dest - Source est sur la machine hôte et Dest sera sur dans 
#le système de fichier de l'image
COPY www/ /usr/local/apache2/htdocs/