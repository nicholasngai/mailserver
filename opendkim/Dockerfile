FROM alpine:3.15

RUN apk add --no-cache opendkim rsyslog

RUN mkdir /run/opendkim

COPY entrypoint.sh /entrypoint.sh

VOLUME /etc/opendkim
VOLUME /var/spool/postfix/opendkim

CMD ["/entrypoint.sh"]
