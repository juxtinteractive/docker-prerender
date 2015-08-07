FROM node:0.10.36

MAINTAINER JUXT "engineering@juxt.com"

RUN mkdir /data

ADD ./package.json /data/package.json
RUN cd /data && npm install

ADD . /data/

CMD node /data/server.js

EXPOSE 8080
