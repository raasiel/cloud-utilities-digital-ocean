FROM raasiel/net-java
MAINTAINER Shafqat Ahmed

RUN     apt-get --assume-yes install unzip npm  && \
        npm cache clean -f  && \
        npm install -g n && \
        n stable  && \
        npm install -g gulp  && \
        npm install -g bower  && \
        npm install -g grunt

