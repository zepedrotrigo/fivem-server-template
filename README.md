# How to run
```
cd server/server-data && ./start.sh
```

# Pre requisites

# Apache2 e php5.6
```
https://medium.com/@lazycoding/installing-apache-2-php-5-6-mysql-on-ubuntu-14-04-eb3887ceeee1
```

# MariaDB and phpMyAdmin
```
apt update
apt install php5.6-mysql php5.6-mcrypt libapache2-mod-php5.6
apt install mariadb-server mariadb-client phpmyadmin
mysql_secure_installation
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
phpmyadmin not found issue:
```
go to: /etc/apache2/apache2.conf
and add: Include /etc/phpmyadmin/apache.conf 
(https://serverfault.com/questions/236994/phpmyadmin-not-found-issue)
```

