#Dockerfile

#from ubuntu
FROM thiswind/ubuntu

RUN apt-get update && apt-get install -y bind9

