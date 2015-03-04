FROM wordpress:4.1
MAINTAINER Pierre Galvez <pierre@lbab.fr>

RUN a2enmod expires
RUN a2enmod headers

RUN docker-php-ext-install mbstring mysql
COPY php.ini /usr/local/etc/php/

CMD ["apache2-foreground"]
