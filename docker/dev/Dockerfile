FROM raasiel/net-java-node
MAINTAINER Shafqat Ahmed

RUN     mkdir /root/downloads && \
        cd /root/downloads && \      
        wget http://download.microsoft.com/download/A/E/2/AE23B059-5727-445B-91CC-15B7A078A7F4/git-tf-2.0.3.20131219.zip && \
        unzip git-tf-2.0.3.20131219.zip -d /root && \
        mv /root/git-tf-2.0.3.20131219 /root/gittf && \
        rm git-tf-2.0.3.20131219.zip