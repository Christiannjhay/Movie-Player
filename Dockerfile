# Use the official PHP image from the Docker Hub
FROM php:8.0-apache

# Copy the current directory contents into /var/www/html in the container
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html

# Expose port 80 to the outside world
EXPOSE 80

# Start the Apache service
CMD ["apache2-foreground"]
