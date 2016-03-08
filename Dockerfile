# My own Bind9

FROM thiswind/ubuntu:12.04

ENV DEBIAN_FRONTEND=noninteractive

COPY sources.list /etc/apt/sources.list
RUN apt-get update && apt-get -y install bind9 dnsutils openssh-client

COPY bind /etc/bind

EXPOSE 53/udp

CMD ["/usr/sbin/named", "-u", "bind", "-g"]
