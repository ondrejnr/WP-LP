FROM wordpress:latest

# Create the directory so the build doesn't fail
RUN mkdir -p /var/www/html/wp-content/themes/twentytwentyfive/

# Copy the style file
COPY custom-style.css /var/www/html/wp-content/themes/twentytwentyfive/style.css

# Fix permissions
RUN chown -R www-data:www-data /var/www/html/wp-content/themes/twentytwentyfive/
