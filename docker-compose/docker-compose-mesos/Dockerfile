FROM ubuntu:16.04
MAINTAINER Shafqat Ahmed

RUN     apt-get update 
RUN     apt-get install -y openssh-server 
RUN     apt-get install -y tar wget git
RUN     apt-get install -y openjdk-8-jdk 
RUN     apt-get -y install build-essential python-dev python-six python-virtualenv libcurl4-nss-dev libsasl2-dev libsasl2-modules maven libapr1-dev libsvn-dev zlib1g-dev
RUN     mkdir /root/.ssh 
RUN     apt-get install -y autoconf libtool net-tools
RUN     apt-get install -y sudo
