# How to run
```
cd server/server-data && ./start.sh
```

# Install LAMP server
https://www.tecmint.com/install-lamp-with-phpmyadmin-in-ubuntu-20-04/
```
sudo apt install apache2
sudo apt install mariadb-server mariadb-client
sudo mysql_secure_installation
sudo apt install php libapache2-mod-php php-mysql
sudo systemctl restart apache2
sudo apt install phpmyadmin
sudo ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf
sudo a2enconf phpmyadmin.conf
sudo systemctl reload apache2.service
```

# Enable root login on phpMyAdmin
```
mysql -u root -p mysql
update mysql.user set plugin='' where user='root';
flush privileges;
exit;
```
Restart mysql:
```
/etc/init.d/mysql restart
```
# phpmyadmin not found issue:
```
go to: /etc/apache2/apache2.conf
and add: Include /etc/phpmyadmin/apache.conf 
(https://serverfault.com/questions/236994/phpmyadmin-not-found-issue)
```

# Connect to phpMyAdmin with PuTTy Tunnel
https://www.youtube.com/watch?v=9VdcQLDmYII
