#!/bin/sh

set -eu

rsyslogd -n &

touch /var/log/mail.log
tail -f /var/log/mail.log &

exec opendmarc -f
