#!/bin/bash

# Update package list and install necessary packages
sudo apt-get update
sudo apt-get install -y apache2 mysql-server php php-mysql libapache2-mod-php wget unzip

# Start Apache and MySQL services
sudo systemctl start apache2
sudo systemctl start mysql

# Enable Apache and MySQL to start on boot
sudo systemctl enable apache2
sudo systemctl enable mysql

# Download WordPress
wget -c http://wordpress.org/latest.zip

# Unzip WordPress
unzip latest.zip

# Move WordPress files to the web root
sudo mv wordpress/* /var/www/html/

# Set permissions
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/

# Create a MySQL database and user for WordPress
DB_NAME='wordpress'
DB_USER='wp_user'
DB_PASS='wp_password'

sudo mysql -e "CREATE DATABASE $DB_NAME;"
sudo mysql -e "CREATE USER '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';"
sudo mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';"
sudo mysql -e "FLUSH PRIVILEGES;"

# Copy the sample configuration file
cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

# Update wp-config.php with database details
sed -i "s/database_name_here/$DB_NAME/" /var/www/html/wp-config.php
sed -i "s/username_here/$DB_USER/" /var/www/html/wp-config.php
sed -i "s/password_here/$DB_PASS/" /var/www/html/wp-config.php

# Restart Apache to apply changes
sudo systemctl restart apache2

echo "WordPress installation completed. Access it at http://192.168.56.79"