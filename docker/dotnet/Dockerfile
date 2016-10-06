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

RUN     echo "deb http://ftp.de.debian.org/debian jessie-backports main" | tee /etc/apt/sources.list.d/jdk8.list
RUN     apt-get update
RUN     apt-get --assume-yes install openjdk-8-jdk    
RUN     apt-get --assume-yes install unzip npm
RUN     npm cache clean -f 
RUN     npm install -g n
RUN     n stable
RUN     npm install -g gulp
RUN     npm install -g bower        

RUN     mkdir /root/downloads && \
        cd /root/downloads && \      
        wget http://download.microsoft.com/download/A/E/2/AE23B059-5727-445B-91CC-15B7A078A7F4/git-tf-2.0.3.20131219.zip && \
        unzip git-tf-2.0.3.20131219.zip -d /root
RUN     mv /root/git-tf-2.0.3.20131219 /root/gittf