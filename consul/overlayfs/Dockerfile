FROM ubuntu:14.04.1

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y wget

RUN mkdir -p /dist/usr/local/bin
RUN wget https://github.com/hashicorp/consul-template/releases/download/v0.6.1/consul-template_0.6.1_linux_amd64.tar.gz
RUN tar zxvf consul-template_0.6.1_linux_amd64.tar.gz
RUN cp consul-template_0.6.1_linux_amd64/consul-template /dist/usr/local/bin/

WORKDIR /dist
RUN tar cf /overlayfs.tar .
