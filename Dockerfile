
FROM php:8.2-apache


RUN a2enmod rewrite && docker-php-ext-install mysqli

# Pass Render environment variables into Apache/PHP
ENV DB_HOST=sql5.freesqldatabase.com
ENV DB_USER=sql5787461
ENV DB_PASSWORD=aLQ1xnEgbq
ENV DB_NAME=sql5787461


COPY . /var/www/html/



RUN chown -R www-data:www-data /var/www/html
