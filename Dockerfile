#Dockerfile

#from ubuntu
FROM thiswind/ubuntu

ENV DEBIAN_FRONTEND noninteractive

#RUN sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 16126D3A3E5C1192
#RUN apt-get update 
RUN apt-get install -y bind9
RUN mkdir /usr/data
RUN rm -rf /etc/bind

CMD cp -r /usr/data/bind/ /etc/ && chown bind:bind /etc/bind/* && /usr/sbin/named -u bind -g
