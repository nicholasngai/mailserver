FROM alpine:3.15

RUN apk add --no-cache rspamd rspamd-proxy rspamd-controller

COPY etc/rspamd /etc/rspamd/

CMD ["rspamd", "-f", "-u", "rspamd", "-g", "rspamd"]
