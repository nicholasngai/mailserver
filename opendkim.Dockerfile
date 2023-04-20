FROM alpine:3.15

RUN apk add --no-cache opendkim rsyslog

RUN mkdir /run/opendkim

COPY opendkim/entrypoint.sh /entrypoint.sh

COPY etc/opendkim /etc/opendkim/

VOLUME /etc/opendkim/keys
VOLUME /var/spool/postfix/opendkim

CMD ["/entrypoint.sh"]
