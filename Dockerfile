# Use the official Bitnami WordPress image as the base
FROM bitnami/wordpress:latest

# You can add custom themes or plugins here in the future
# Example: COPY ./my-theme /opt/bitnami/wordpress/wp-content/themes/my-theme

EXPOSE 8080 8443
