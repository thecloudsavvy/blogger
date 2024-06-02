FROM php:8.1-apache
RUN mkdir -p /var/www/html
COPY . /var/www/html/
WORKDIR /var/www/html
RUN docker-php-ext-install -j$(nproc) pdo pdo_mysql
RUN apt-get -y upgrade
RUN apt-get -y update
RUN apt-get -y install vim