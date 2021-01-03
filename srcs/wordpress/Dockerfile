FROM alpine

USER root

ADD srcs /tmp
ADD srcs/telegraf.conf     /etc/telegraf/telegraf.conf
ADD srcs/wp-config.php      /tmp
ADD  srcs/supervisord.conf     /etc/supervisord.conf

RUN sh /tmp/install.sh
RUN sh /tmp/init.sh

EXPOSE 5050

CMD [ "/usr/bin/supervisord"]