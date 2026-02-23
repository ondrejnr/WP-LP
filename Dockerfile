FROM wordpress:latest

# Copy our custom CSS into the container
COPY custom-style.css /tmp/custom-style.css

# Append our custom CSS to the active theme's style.css
# This targets the 'twentytwentyfive' theme specifically
RUN cat /tmp/custom-style.css >> /var/www/html/wp-content/themes/twentytwentyfive/style.css
