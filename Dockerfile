FROM node:0.10.36

MAINTAINER JUXT "engineering@juxt.com"

RUN mkdir /data

ADD ./package.json /data/package.json
RUN cd /data && npm install

ADD ./src/server.js /data/src/server.js

CMD node /data/src/server.js
VOLUME /data/src/
EXPOSE 8080
