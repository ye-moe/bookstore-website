
FROM php:8.2-apache


RUN a2enmod rewrite && docker-php-ext-install mysqli

# Copy everything from root (where your code is now)
COPY . /var/www/html/



RUN chown -R www-data:www-data /var/www/html
