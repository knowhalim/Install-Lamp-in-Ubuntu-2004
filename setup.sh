#!/bin/bash

# Update and upgrade the system
sudo apt update && sudo apt upgrade -y

# Install Apache and related utilities
sudo apt install -y apache2 apache2-utils

# Check status, start and enable Apache on boot
sudo systemctl start apache2
sudo systemctl enable apache2

# Install UFW (Uncomplicated Firewall) and iptables
sudo apt-get install -y ufw iptables

# Set iptables to accept traffic on port 80
sudo iptables -I INPUT -p tcp --dport 80 -j ACCEPT

# Allow HTTP traffic through UFW
sudo ufw allow http

# Install MariaDB server and client
sudo apt install -y mariadb-server mariadb-client

# Start and enable MariaDB
sudo systemctl start mariadb
sudo systemctl enable mariadb

# Install PHP and required extensions
sudo apt install -y php7.4 libapache2-mod-php7.4 php7.4-mysql php-common php7.4-cli php7.4-common php7.4-json php7.4-opcache php7.4-readline

# Enable PHP module for Apache
sudo a2enmod php7.4
sudo apt install php-xml
sudo apt-get install php-zip
sudo systemctl restart apache2

# Secure the MariaDB installation (interactive script)
echo "Please run 'mysql_secure_installation' manually to secure your MariaDB installation."

# Switch to MariaDB shell (interactive)
echo "Run 'mariadb -u root' and then 'exit;' to exit MariaDB shell."

# Switch from mod_php to PHP-FPM
sudo a2dismod php7.4
sudo apt install -y php7.4-fpm
sudo a2enmod proxy_fcgi setenvif
sudo a2enconf php7.4-fpm
sudo systemctl restart apache2
