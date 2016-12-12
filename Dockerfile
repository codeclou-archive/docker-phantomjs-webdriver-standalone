FROM ubuntu:16.04

#
# PACKAGES
#
RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/* && \
    sudo apt-get update && \
    sudo apt-get -y install fontconfig wget build-essential zlib1g-dev glibc

#
# PHANTOMJS
#
ENV DOCKER_BINARY_URL https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
RUN wget -O phantomjs.tbz $DOCKER_BINARY_URL

#
# WILL BE OVERWRITTEN
#
CMD echo "1"






