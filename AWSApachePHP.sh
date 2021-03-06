#!/bin/bash

# Update Amazon Linux 2
yum update -y

# Install Apache, PHP and MariaDB on Amazon Linux 2
amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
yum install -y httpd mariadb-server
systemctl start httpd

# Start Apache on system boot
systemctl enable httpd

# Create index.html
cd /var/www/html
echo "<html><h1>Welcome</h1></html>"  >  index.html
