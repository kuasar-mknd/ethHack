FROM mcr.microsoft.com/devcontainers/php:1-8.2-bullseye

# Installer les extensions PHP nécessaires
RUN apt-get update && apt-get install -y \
        libpng-dev \
        libonig-dev \
        libxml2-dev \
        zip \
        unzip \
        git \
        curl \
    && docker-php-ext-install \
        pdo_mysql \
        mbstring \
        exif \
        pcntl \
        bcmath \
        gd

# Installer Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Installer Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_21.x | bash - \
    && apt-get install -y nodejs

# Activer le mod_rewrite pour Apache
RUN a2enmod rewrite

# Définir le répertoire de travail
WORKDIR /var/www/html

