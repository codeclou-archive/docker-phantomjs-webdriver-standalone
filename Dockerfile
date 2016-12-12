FROM ubuntu:16.04

#
# PACKAGES
#
RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/* && \
    sudo apt-get update && \
    sudo apt-get -y install fontconfig wget bzip2 build-essential zlib1g-dev

#
# PHANTOMJS INSTALL
#
ENV DOCKER_BINARY_URL https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
RUN wget -O phantomjs.tbz $DOCKER_BINARY_URL && \
    tar xf phantomjs.tbz

#
# RUN PHANTOMJS SELENIUM SERVER STANDALONE
#
RUN useradd --system --uid 72379 -m --shell /usr/sbin/nologin phantomjs
USER phantomjs

EXPOSE 4444

CMD /phantomjs-2.1.1-linux-x86_64/bin/phantomjs --webdriver 4444
