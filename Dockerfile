FROM php:7.2-fpm as fpm
COPY php.conf /etc/php/7.2/fpm/pool.d/www.conf

COPY . /code
VOLUME ["/code"]

FROM nginx:1.15.0-alpine AS nginx
ADD nginx.conf /etc/nginx/conf.d/default.conf
