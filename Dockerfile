FROM ubuntu:20.04
MAINTAINER toshelp

#Install dependency tools
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y curl wget git vim build-essential pkg-config python osmium-tool osmctools libsqlite3-dev zlib1g-dev liblua5.1-0 liblua5.1-0-dev libprotobuf-dev protobuf-compiler shapelib libshp-dev libboost-program-options-dev libboost-filesystem-dev libboost-system-dev
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
SHELL ["/bin/bash", "--login", "-i", "-c"]
RUN source /root/.bashrc && nvm install v12.20.1 && npm install -g yarn
#RUN yarn global add "@beyondtracks/spritezero-cli"
SHELL ["/bin/bash", "--login", "-i", "-c"]

#Install spritezero-cli
RUN yarn global add @beyondtracks/spritezero-cli

#Install spritezero-png
WORKDIR /root
RUN git clone https://github.com/cs09g/spritezero-png.git
RUN cd spritezero-png && yarn install && yarn add queue-async && chmod 755 ./bin/spritezeropng
RUN ln -s /root/spritezero-png/bin/spritezeropng /usr/local/bin/spritezeropng

#Install node-fontnik
RUN yarn global add fontnik

#Install tippecanoe
RUN git clone https://github.com/mapbox/tippecanoe.git
RUN cd tippecanoe && make -j && make install

#Install tilemaker
RUN git clone https://github.com/systemed/tilemaker.git
RUN cd tilemaker && make && make install
