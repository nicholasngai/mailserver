FROM php:8.0-apache

ARG VERSION=1.5.2

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
        libicu-dev \
        libldap-dev \
        libmagickwand-dev \
        libpng-dev \
        libzip-dev \
        zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure exif \
    && docker-php-ext-install -j $(nproc) exif \
    && docker-php-ext-configure gd \
    && docker-php-ext-install -j $(nproc) gd \
    && docker-php-ext-configure intl \
    && docker-php-ext-install -j $(nproc) intl \
    && docker-php-ext-configure ldap \
    && docker-php-ext-install -j $(nproc) ldap \
    && docker-php-ext-configure pdo_mysql \
    && docker-php-ext-install -j $(nproc) pdo_mysql \
    && docker-php-ext-configure zip \
    && docker-php-ext-install -j $(nproc) zip
RUN pecl install imagick \
    && docker-php-ext-enable imagick

RUN curl -Lo /roundcube.tar.gz https://github.com/roundcube/roundcubemail/releases/download/$VERSION/roundcubemail-$VERSION-complete.tar.gz \
    && tar -xz -C /var/www -f /roundcube.tar.gz \
    && rm -f /roundcube.tar.gz \
    && rm -rf /var/www/html \
    && mv /var/www/roundcubemail-$VERSION /var/www/html \
    && chown -R www-data:www-data /var/www/html

VOLUME /var/www/html/config

EXPOSE 80/tcp
