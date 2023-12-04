#!/bin/bash
set -e

# Démarrer Sail et effectuer des actions post-démarrage
/var/www/html/vendor/bin/sail up -d
/var/www/html/vendor/bin/sail artisan key:generate
/var/www/html/vendor/bin/sail artisan migrate
