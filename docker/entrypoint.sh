#!/bin/bash 
if [ ! -f "vendor/autoload.php" ]; then
    echo "composer installing"
    composer install --no-progess --no-interaction
fi

if [ ! -f ".env" ]; then
    echo "copying environment files"
    cp .env.example .env
fi

#start php and nginx servers
php-fpm -D
nginx -g "daemon off"







