FROM wordpress:latest

# Create the theme directory in the source location
RUN mkdir -p /usr/src/wordpress/wp-content/themes/twentytwentyfive

# Copy your custom CSS into that directory
COPY custom-style.css /usr/src/wordpress/wp-content/themes/twentytwentyfive/style.css

# Ensure the web server owns the files
RUN chown -R www-data:www-data /usr/src/wordpress/wp-content
