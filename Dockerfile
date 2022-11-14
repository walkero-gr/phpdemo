FROM webdevops/php-nginx:8.1

LABEL maintainer="Georgios Sokianos <walkero@gmail.com>"

ADD . /var/www/html

WORKDIR /var/www/html

RUN composer install