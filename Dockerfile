FROM wordpress:php7.2-apache

WORKDIR /var/www/html

COPY ./wordpress .

CMD ["apache2-foreground"]

