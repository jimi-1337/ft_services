#install
apk update
apk add openrc supervisor nginx openssl openssh --no-cache
apk add libc6-compat
wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.1_linux_amd64.tar.gz
tar -xvf telegraf-1.16.1_linux_amd64.tar.gz
mv telegraf-1.16.1 telegraf
# Request SSL key
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MA/ST=Khouribga/L=Khouribga/O=Organisation_NAME/CN=SERVER_NAME"
# ssh
ssh-keygen -A
adduser -D "admin" 
echo "admin:admin" | chpasswd