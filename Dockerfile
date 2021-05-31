FROM ubuntu:20.04
MAINTAINER toshelp

#Install dependency tools
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    curl \
    default-jre \
    gdal-bin \
    git \
    imagemagick \
    libboost-filesystem-dev \
    libboost-iostreams-dev \
    libboost-program-options-dev \
    libboost-system-dev \
    libluajit-5.1-dev \
    libprotobuf-dev \
    libshp-dev \
    libsqlite3-dev \
    osmctools \
    osmium-tool \
    pkg-config \
    protobuf-compiler \ 
    python \
    shapelib \
    unzip \
    vim \
    wget \
    zlib1g-dev
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
SHELL ["/bin/bash", "--login", "-i", "-c"]
RUN source /root/.bashrc && nvm install v12.20.1 && npm install -g yarn
SHELL ["/bin/bash", "--login", "-i", "-c"]

#Install node-fontnik
RUN yarn global add fontnik@0.6.0

#Install spritezero-cli
RUN yarn global add @beyondtracks/spritezero-cli@2.3.0

#Install spritezero-png
WORKDIR /root
RUN git clone https://github.com/cs09g/spritezero-png.git && \
    cd spritezero-png && \
    git checkout fe7d1987e85a91a9b7a4be57c11f16123c24d71d && \
    yarn install && yarn add queue-async && chmod 755 ./bin/spritezeropng && \
    ln -s /root/spritezero-png/bin/spritezeropng /usr/local/bin/spritezeropng

#Install tippecanoe
RUN git clone https://github.com/mapbox/tippecanoe.git && \
    cd tippecanoe && \
    git checkout 18e53cd7fb9ae6be8b89d817d69d3ce06f30eb9d && \
    make -j && \
    make install

#Install tilemaker
RUN git clone https://github.com/systemed/tilemaker.git
RUN cd tilemaker && \
    git checkout 12b34febc71df71da26529a58f48bbd750c7c194 && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make && \
    make install

#Install osmosis
RUN wget https://github.com/openstreetmap/osmosis/releases/download/0.48.3/osmosis-0.48.3.tgz && \
    mkdir osmosis && \
    tar xf ./osmosis-0.48.3.tgz -C ./osmosis && \
    rm -rf ./osmosis-0.48.3.tgz && \
    ln -s /root/osmosis/bin/osmosis /usr/local/bin/osmosis

#Install MBUtil
RUN git clone https://github.com/mapbox/mbutil.git && \
    cd mbutil && \
    git checkout 2fc4161f9be890a65d07f5e7b2ed0c8a0a123ed6

