FROM eavatar/basebox

ADD overlayfs.tar /
ADD haproxy-run.sh /etc/service/haproxy/run
ADD haproxy-reload.sh /etc/service/haproxy/reload
ADD haproxy.cfg /etc/haproxy/

RUN chmod a+x /etc/service/haproxy/run && chmod a+x /etc/service/haproxy/reload
RUN echo haproxy:x:102:106::/etc/haproxy:/bin/sh >> /etc/passwd &&\
    echo haproxy:x:106: >> /etc/group

VOLUME /etc/haproxy

# Define working directory.
WORKDIR /etc/haproxy

# Expose ports.
EXPOSE 80
EXPOSE 443
