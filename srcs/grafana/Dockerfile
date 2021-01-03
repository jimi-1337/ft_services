FROM alpine
RUN apk update
RUN apk add openrc supervisor
RUN wget https://dl.grafana.com/oss/release/grafana-7.3.0-beta2.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.3.0-beta2.linux-amd64.tar.gz
ADD /srcs/install.sh     /install.sh
ADD /srcs/telegraf.conf     /etc/telegraf/telegraf.conf
ADD /srcs/grafana.db        grafana.db
ADD /srcs/supervisord.conf     /etc/supervisord.conf
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2
RUN sh install.sh
EXPOSE 3000
CMD [ "/usr/bin/supervisord"]