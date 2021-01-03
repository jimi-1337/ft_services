wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.1_linux_amd64.tar.gz
tar xf telegraf-1.16.1_linux_amd64.tar.gz
mv telegraf-1.16.1 telegraf

adduser -D admin
echo "admin:admin" | chpasswd