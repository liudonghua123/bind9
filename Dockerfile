#Dockerfile

#from ubuntu
FROM thiswind/ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y bind9
RUN mkdir -p /usr/data
RUN rm -rf /etc/bind && mkdir /etc/bind

CMD cp /usr/data/* /etc/bind/ && chown bind:bind /etc/bind/* && /usr/sbin/named -u bind -g
