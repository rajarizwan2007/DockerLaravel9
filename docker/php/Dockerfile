FROM php:8.0-apache
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli
RUN apt-get update && apt-get install -y curl \
  libpng-dev \
  libonig-dev \
  libxml2-dev \
  zip \
  unzip \
  libzip-dev
  
RUN docker-php-ext-install mbstring

RUN docker-php-ext-install zip

RUN docker-php-ext-install gd

RUN a2enmod rewrite


RUN apt-get update && apt-get upgrade -y
RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer
WORKDIR /var/www/html
# RUN composer create-project laravel/laravel .
# RUN composer update
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
