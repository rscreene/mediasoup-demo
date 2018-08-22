FROM node:8-alpine

RUN apk add --update alpine-sdk python

COPY ./package.json /usr/src/drum-app/
COPY ./server.js /usr/src/drum-app/
COPY ./config.example.js /usr/src/drum-app/config.js
COPY ./lib/ /usr/src/drum-app/lib/
COPY ./certs/ /usr/src/drum-app/certs/

RUN cd /usr/src/drum-app/ && npm install

EXPOSE 4000
WORKDIR /usr/src/drum-app/
ENTRYPOINT ["node", "./server.js"]
