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

#RUN     echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | tee /etc/apt/sources.list.d/webupd8team-java.list
#RUN     echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
#RUN     apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
RUN     apt-get update
RUN     apt-get --assume-yes openjdk-8-jdk    
#apt-get update && \
#        apt-get --assume-yes install unzip npm && \
#        mkdir /root/downloads && \
#        cd /root/downloads && \      
#        wget http://download.microsoft.com/download/A/E/2/AE23B059-5727-445B-91CC-15B7A078A7F4/git-tf-2.0.3.20131219.zip && \
#        unzip git-tf-2.0.3.20131219.zip -d /root

#RUN mv /root/git-tf-2.0.3.20131219 /root/gittf
#RUN mkdir /root/tfs
#RUN git config --global git-tf.server.username deploy \
#        && git config --global git-tf.server.password orion123@
#RUN cd /root/tfs
#RUN /root/gittf/git-tf clone http://180.234.222.204:14038/tfs/Orion $/Stockbase/dev/src
#RUN npm cache clean -f 
#RUN npm install -g n \
#        && n stable \
#        && npm install -g gulp \
#        && npm install -g bower \        

# Restore app
#RUN cd /root/tfs/src/Stockbase.Web \
#        && dotnet restore \
#        && dotnet build \
#        && dotnet publish \
#        && mkdir /app \
#        && cp /root/tfs/src/Stockbase.Web/bin/Debug/netcoreapp1.0/publish/ /app \

WORKDIR /app
ENTRYPOINT ["dotnet", "Stockbase.Web.dll"]
