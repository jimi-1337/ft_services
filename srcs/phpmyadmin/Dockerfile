FROM alpine

USER root

ADD srcs /pro
ADD srcs/telegraf.conf     /etc/telegraf/telegraf.conf
ADD srcs/supervisord.conf     /etc/supervisord.conf

RUN sh /pro/install.sh
RUN sh /pro/init.sh

EXPOSE 5000

CMD [ "/usr/bin/supervisord"]