# How to run
```
cd server/server-data && ./start.sh
```

# Pre requisites

# Apache2 e php5.6
```
add-apt-repository ppa:ondrej/apache2
apt-get update
apt-get upgrade
add-apt-repository ppa:ondrej/php
apt-get update
apt-get install -y php5.6 php5.6-mcrypt php5.6-mbstring php5.6-curl php5.6-cli php5.6-mysql php5.6-gd php5.6-intl php5.6-xsl php5.6-zip libapache2-mod-php5.6
sudo a2dismod php5
sudo a2enmod php5.6
sudo service apache2 restart
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

# Connect to phpMyAdmin with PuTTy Tunnel
https://www.youtube.com/watch?v=9VdcQLDmYII
