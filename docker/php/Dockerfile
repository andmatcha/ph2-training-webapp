FROM php:8.1-fpm
COPY php.ini /usr/local/etc/php/

RUN apt-get update \
    && docker-php-ext-install pdo_mysql \
    && apt-get update && apt-get install -y locales \
    && sed -i -E 's/# (ja\_JP.UTF-8)/\\1/' /etc/locale.gen && locale-gen
ENV LANG ja\_JP.UTF-8
