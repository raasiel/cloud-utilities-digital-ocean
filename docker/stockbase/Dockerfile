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

FROM raasiel/dev
MAINTAINER Shafqat Ahmed

RUN     mkdir /root/tfs  && \
        git config --global git-tf.server.username deploy && \
        git config --global git-tf.server.password orion123@ && \
        cd /root/tfs && \
        /root/gittf/git-tf clone http://180.234.222.204:14038/tfs/Orion $/Stockbase/dev/src

# Restore app
RUN cd /root/tfs/src/Stockbase.Dependency && \
        dotnet restore && \
        dotnet build && \
        cd /root/tfs/src/Stockbase.Core && \
        dotnet restore && \
        dotnet build && \
        cd /root/tfs/src/Stockbase.Data && \
        dotnet restore && \
        dotnet build && \
        cd /root/tfs/src/Stockbase.Data.SqlServer && \
        dotnet restore && \
        dotnet build && \
        cd /root/tfs/src/Stockbase.Business && \
        dotnet restore && \
        dotnet build && \
        cd /root/tfs/src/Stockbase.Web && \
        dotnet restore && \
        dotnet build && \               
        dotnet publish && \
        cp -r /root/tfs/src/Stockbase.Web/bin/Debug/netcoreapp1.0/publish / && \
        mv /publish /app

RUN printf "cd /app \ndotnet Stockbase.Web.dll" > /app/runapp.sh 
WORKDIR /app
CMD runapp.sh
EXPOSE 5000
