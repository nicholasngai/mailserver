FROM alpine:3.15

RUN apk add --no-cache opendmarc rsyslog

RUN mkdir /run/opendmarc && ln -s /etc/opendmarc/opendmarc.conf /etc/opendmarc.conf

COPY entrypoint.sh /entrypoint.sh

VOLUME /etc/opendmarc
VOLUME /var/spool/postfix/opendmarc

CMD ["/entrypoint.sh"]
