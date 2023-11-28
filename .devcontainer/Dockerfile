# Utilise l'image officielle PHP avec Apache
FROM php:8.1-apache

# Installe les extensions PHP nécessaires
RUN docker-php-ext-install pdo pdo_mysql

# Copie votre code source Laravel dans le conteneur
COPY . /var/www/html

# Donne les permissions appropriées
RUN chown -R www-data:www-data /var/www/html \
    && a2enmod rewrite
