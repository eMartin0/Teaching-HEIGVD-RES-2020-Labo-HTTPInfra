# Serveur HTTP Apache
FROM php:7.2-apache

COPY apache2-foreground /usr/local/bin/
COPY templates /var/apache2/templates

RUN apt-get update && apt-get install -y vim nano
RUN a2enmod proxy proxy_http
RUN a2ensite 000-*.conf 001-*.conf
