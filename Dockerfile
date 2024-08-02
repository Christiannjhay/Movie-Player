# Use the official PHP image from the Docker Hub
FROM php:8.0-apache

# Copy the PHP files to the Apache document root
COPY . /var/www/html/

# Set permissions for the copied files
RUN chown -R www-data:www-data /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Expose port 80 to the outside world
EXPOSE 80

# Start the Apache service
CMD ["apache2-foreground"]
