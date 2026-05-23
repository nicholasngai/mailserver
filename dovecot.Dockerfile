FROM debian:13-slim

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
        dovecot-imapd \
        dovecot-lmtpd \
        dovecot-managesieved \
        dovecot-mysql \
        dovecot-sieve \
        dovecot-pop3d \
        gnupg \
        python3 \
    && rm -rf /var/lib/apt/lists/*

RUN adduser --system --uid 5000 --group vmail

COPY etc/dovecot /etc/dovecot/

VOLUME /etc/letsencrypt
VOLUME /var/mail
VOLUME /var/spool/postfix/dovecot

EXPOSE 110/tcp 143/tcp 993/tcp 995/tcp 4190/tcp

CMD ["/usr/sbin/dovecot", "-F"]
