FROM alpine

RUN apk add mariadb mariadb-client openrc supervisor
RUN openrc &> /dev/null
RUN touch /run/openrc/softlevel

ADD srcs/telegraf.conf /etc/telegraf/telegraf.conf
ADD /srcs/supervisord.conf     /etc/supervisord.conf
COPY srcs/install.sh .
COPY srcs/req.sql .
COPY srcs/mysql.sql .
CMD sh install.sh