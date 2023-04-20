FROM alpine:3.15

RUN apk add --no-cache postfix

EXPOSE 25/tcp 465/tcp 587/tcp

COPY etc/postfix /etc/postfix/

VOLUME /etc/postfix/sasl_passwd
VOLUME /etc/letsencrypt
VOLUME /var/mail
VOLUME /var/spool/postfix/dovecot
VOLUME /var/spool/postfix/opendkim
VOLUME /var/spool/postfix/opendmarc

CMD ["/usr/sbin/postfix", "start-fg"]
