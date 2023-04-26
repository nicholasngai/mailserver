FROM alpine:3.15

RUN apk add --no-cache opendmarc rsyslog

RUN mkdir /run/opendmarc && ln -s /etc/opendmarc/opendmarc.conf /etc/opendmarc.conf

COPY opendmarc/entrypoint.sh /entrypoint.sh

COPY etc/opendmarc /etc/opendmarc/

VOLUME /var/spool/postfix/opendmarc

CMD ["/entrypoint.sh"]
