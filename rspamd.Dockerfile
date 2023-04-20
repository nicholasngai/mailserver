FROM alpine:3.15

RUN apk add --no-cache rspamd rspamd-proxy

CMD ["rspamd", "-f", "-u", "rspamd", "-g", "rspamd"]
