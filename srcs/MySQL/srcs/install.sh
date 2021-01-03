# !/bin/sh
apk add libc6-compat
wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.1_linux_amd64.tar.gz
tar -xvf telegraf-1.16.1_linux_amd64.tar.gz
mv telegraf-1.16.1 telegraf

/etc/init.d/mariadb setup
sed -i 's/skip-networking/# skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf
service mariadb restart
mysql --user=root < req.sql
mysql --user=root wordpress < mysql.sql
mysql --user=root wordpress < req.sql
/usr/bin/supervisord