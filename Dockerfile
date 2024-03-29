# My own Bind9

FROM thiswind/ubuntu:12.04

ENV DEBIAN_FRONTEND=noninteractive

ADD sources.list /etc/apt
RUN apt-get update && apt-get -y install bind9 dnsutils openssh-client

ADD bind /etc/bind

EXPOSE 53

CMD ["/usr/sbin/named", "-u", "bind", "-g", "-d", "3"]
