FROM alpine 

USER root

# Copy files
ADD srcs/init.sh /tmp/init.sh
ADD srcs/install.sh /tmp/install.sh
ADD srcs/nginx.conf /etc/nginx/nginx.conf
ADD srcs/index.html /var/www/localhost/htdocs/index.html
ADD srcs/telegraf.conf /etc/telegraf/telegraf.conf
ADD srcs/supervisord.conf     /etc/supervisord.conf
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

# Run Install
RUN sh /tmp/install.sh 

EXPOSE 80 443 22

CMD sh /tmp/init.sh