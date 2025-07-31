#!/bin/bash

# Update package list and install necessary packages
apt-get update
apt-get install -y apache2 curl

# Create a directory for the website
mkdir -p /var/www/html/tooplate-site

# Download the website content from tooplate.com
curl -o /var/www/html/tooplate-site/index.html https://www.tooplate.com/view/2125-creative-agency

# Set permissions
chown -R www-data:www-data /var/www/html/tooplate-site

# Configure Apache to serve the new site
cat > /etc/apache2/sites-available/tooplate-site.conf <<EOF
<VirtualHost *:80>
    DocumentRoot /var/www/html/tooplate-site
    <Directory /var/www/html/tooplate-site>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
EOF

# Enable the new site and disable the default site
a2ensite tooplate-site
a2dissite 000-default

# Restart Apache to apply changes
systemctl restart apache2