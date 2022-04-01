#!/usr/bin/env bash

cd /var/www/html/docker-laravel

ENV_FILE=".env"

# if [ ! -f "$ENV_FILE" ]; then
  echo "Creating ENV file..."
  cp .env.example .env
  sed -i "s/\(^APP_KEY=$\)/\101234567890123456789012345678901/" .env
  sed -i "s/\(^DB_DATABASE=\).*$/\1forge/" .env
  sed -i "s/\(^DB_USERNAME=\).*$/\1forge/" .env
  sed -i "s/\(^DB_PASSWORD=\).*$/\1pass1234/" .env
  sed -i "s/\(^DB_HOST=\).*$/\1db/" .env

  echo "Setting up Laravel..."
# fi

echo "Clearing caches..."
php artisan cache:clear
php artisan route:clear
php artisan config:clear
php artisan view:clear

echo "Running DB migrations..."
sleep 1s
php artisan migrate -v
