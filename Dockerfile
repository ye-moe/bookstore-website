# Use PHP with Apache
FROM php:8.2-apache

# Enable Apache mod_rewrite and mysqli for MySQL access
RUN a2enmod rewrite && docker-php-ext-install mysqli

# Copy project files into the Apache directory
COPY final_project/ /var/www/html/

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html
