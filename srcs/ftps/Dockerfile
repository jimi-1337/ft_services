FROM alpine:latest
RUN apk update
RUN apk add vsftpd openrc openssl supervisor
ADD /srcs/install.sh           /install.sh
ADD /srcs/vsftpd.conf       /etc/vsftpd/vsftpd.conf
ADD /srcs/telegraf.conf     /etc/telegraf/telegraf.conf
ADD /srcs/supervisord.conf     /etc/supervisord.conf
RUN chmod +x            /install.sh
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/vsftpd.pem -out /etc/ssl/certs/vsftpd.pem -subj "/C=MA/ST=Khouribga/L=Khouribga/O=1337/CN=Ayoub"
RUN openrc &> /dev/null
RUN touch /run/openrc/softlevel
RUN sh install.sh
EXPOSE 21 21000
CMD [ "/usr/bin/supervisord"]