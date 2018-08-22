#Installing apache and downloading wordpress it on root directory.
#!/bin/sh
yum update
yum install httpd
yum install php php-mysql
service httpd start
cd /var/www/html
wget http://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
cd wordpress
cp -r * .. && cd ..
service httpd restart





