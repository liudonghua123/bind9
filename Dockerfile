#Dockerfile

#from ubuntu
FROM thiswind/ubuntu

RUN sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 16126D3A3E5C1192
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y bind9
RUN mkdir /usr/data
RUN rm -rf /etc/bind/*

CMD cp -r /usr/data/bind /etc/ && /etc/usr/sbin/named -u bind -g
