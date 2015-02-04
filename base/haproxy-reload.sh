#!/bin/bash

HAPROXY="/etc/haproxy"
PIDFILE="/etc/service/haproxy/supervise/pid"


cd "$HAPROXY"

haproxy -f /etc/haproxy/haproxy.cfg -p $(</etc/service/haproxy/supervise/pid) -sf $(</etc/service/haproxy/supervise/pid)