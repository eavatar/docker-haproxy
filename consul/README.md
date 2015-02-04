eavatar/haproxy-consul
===================================
HAProxy integrated with Consul for service discovery. This image is based on eavatar/haproxy.

The address of Consul agent need to be passed via environment variable 'CONSUL' for the container
to work. It looks for services bound to the name 'web' with 'release' tag.
