FROM wordpress:latest

# 1. Create the theme directory manually so the build doesn't fail
RUN mkdir -p /var/www/html/wp-content/themes/twentytwentyfive/

# 2. Copy our custom CSS directly as the main style sheet
COPY custom-style.css /var/www/html/wp-content/themes/twentytwentyfive/style.css

# 3. Fix permissions so WordPress can read it
RUN chown -R www-data:www-data /var/www/html/wp-content/themes/twentytwentyfive/
