#ENTRYPOINT ["dotnet", "Stockbase.Web.dll"]
#ARG source=.
#WORKDIR /app
#EXPOSE 80
#COPY $source .

# Dockerfile for Hyperledger fabric base image, with everything (peer, membersrvc) to go!
# If you need a peer node to run, please see the yeasy/hyperledger-peer image.
# Workdir is set to $GOPATH/src/github.com/hyperledger/fabric
# Data is stored under /var/hyperledger/db and /var/hyperledger/production

# Currently, the binary will look for config files at corresponding path.
# based on yeasy/hyperledger

FROM microsoft/dotnet
MAINTAINER Shafqat Ahmed

#ENV DEBIAN_FRONTEND noninteractive

RUN     echo "deb http://ftp.de.debian.org/debian jessie-backports main" | tee /etc/apt/sources.list.d/jdk8.list && \
        apt-get update && \
        apt-get --assume-yes install openjdk-8-jdk  && \
        apt-get --assume-yes install unzip npm  && \
        npm cache clean -f  && \
        npm install -g n && \
        n stable  && \
        npm install -g gulp  && \
        npm install -g bower 

TAG raasiel/dotnet-node