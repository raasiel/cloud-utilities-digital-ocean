
FROM debian
MAINTAINER Shafqat Ahmed

#ENV DEBIAN_FRONTEND noninteractive

RUN     apt-get update && \
        apt-get install curl libunwind8 gettext  && \ 
        curl -sSL -o dotnet.tar.gz https://go.microsoft.com/fwlink/?LinkID=827530  && \
        mkdir -p /opt/dotnet && sudo tar zxf dotnet.tar.gz -C /opt/dotnet  && \
        ln -s /opt/dotnet/dotnet /usr/local/bin  && \
        apt-get clean