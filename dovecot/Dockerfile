FROM alpine:3.15

RUN apk add --no-cache dovecot \
    dovecot-lmtpd \
    dovecot-mysql \
    dovecot-pigeonhole-plugin \
    dovecot-pop3d

RUN adduser -u 5000 -h /nonexistent -DH vmail

VOLUME /etc/postfix
VOLUME /etc/letsencrypt
VOLUME /var/mail
VOLUME /var/spool/postfix/dovecot

EXPOSE 110/tcp 143/tcp 993/tcp 995/tcp 4190/tcp

CMD ["/usr/sbin/dovecot", "-F"]
