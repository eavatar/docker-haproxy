#!/bin/bash

exec 2>&1
source /etc/envvars

CONSUL=${CONSUL:-localhost}
exec /usr/local/bin/consul-template -consul $CONSUL:8500 -template "/etc/haproxy/haproxy.ctmpl:/etc/haproxy/haproxy.cfg:sv restart haproxy"

