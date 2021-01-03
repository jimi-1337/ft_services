apk add libc6-compat
wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.1_linux_amd64.tar.gz
tar xf telegraf-1.16.1_linux_amd64.tar.gz
mv telegraf-1.16.1 telegraf
rm grafana-7.3.0-beta2.linux-amd64.tar.gz
mv grafana-7.3.0-beta2 grafana
mkdir grafana/data
chmod 777 grafana
mv grafana.db grafana/data