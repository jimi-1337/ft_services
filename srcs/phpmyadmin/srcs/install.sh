mkdir -p /tmp
chmod 777 /tmp
apk add nginx
apk add libc6-compat openrc supervisor
apk add php7-fpm php7-mcrypt php7-soap php7-openssl php7-mbstring php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype php7-session
mv /pro/nginx.conf /etc/nginx/nginx.conf
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.3/phpMyAdmin-4.9.3-english.tar.gz
tar -xvf phpMyAdmin-4.9.3-english.tar.gz
mv phpMyAdmin-4.9.3-english /www
mv /pro/config.inc.php /www/

wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.1_linux_amd64.tar.gz
tar -xvf telegraf-1.16.1_linux_amd64.tar.gz
mv telegraf-1.16.1 telegraf