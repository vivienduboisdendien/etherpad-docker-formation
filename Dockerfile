FROM node:latest

RUN apt-get update && \
apt-get install git curl unzip wget && \
apt-get clean

RUN wget "https://github.com/ether/etherpad-lite/archive/1.8.14.zip" \
-O etherpad.zip
RUN unzip etherpad.zip


WORKDIR /etherpad-lite-1.8.14
CMD ./src/bin/run.sh --root
