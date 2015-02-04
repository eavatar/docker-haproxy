#!/bin/bash

exec 2>&1
source /etc/envvars

#
# run.sh
#

HAPROXY="/etc/haproxy"
PIDFILE="/tmp/haproxy.pid"


cd "$HAPROXY"

exec /usr/sbin/haproxy -f /etc/haproxy/haproxy.cfg -p /tmp/haproxy.pid
