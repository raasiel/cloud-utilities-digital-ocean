
FROM microsoft/dotnet
MAINTAINER Shafqat Ahmed

#ENV DEBIAN_FRONTEND noninteractive

RUN     echo "deb http://ftp.de.debian.org/debian jessie-backports main" | tee /etc/apt/sources.list.d/jdk8.list && \
        apt-get update && \
        apt-get --assume-yes install openjdk-8-jdk