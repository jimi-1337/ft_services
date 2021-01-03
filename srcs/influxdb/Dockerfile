FROM alpine
RUN apk update
RUN apk add influxdb openrc supervisor
ADD srcs/install.sh     /install.sh
ADD srcs/telegraf.conf         /etc/telegraf/telegraf.conf
ADD /srcs/supervisord.conf     /etc/supervisord.conf
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2
RUN chmod +x                /install.sh
RUN sh install.sh
EXPOSE 8086
CMD [ "/usr/bin/supervisord"]