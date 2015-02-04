FROM eavatar/haproxy:1.5.11

ADD overlayfs.tar /
ADD haproxy.ctmpl /etc/haproxy/
ADD consul-template-run.sh /etc/service/consul-template/run
RUN chmod a+x /etc/service/consul-template/run

# Expose ports.
EXPOSE 80
EXPOSE 443
