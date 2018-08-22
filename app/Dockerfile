FROM node:8-alpine

RUN apk add --update alpine-sdk python

COPY ./package.json /usr/src/drum-app/
COPY ./gulpfile.js /usr/src/drum-app/
COPY ./index.html /usr/src/drum-app/
COPY ./banner.txt /usr/src/drum-app/
COPY ./lib/ /usr/src/drum-app/lib/
COPY ./resources/ /usr/src/drum-app/resources/
COPY ./stylus/ /usr/src/drum-app/stylus/

RUN cd /usr/src/drum-app/ && npm install && npm install -g gulp-cli

EXPOSE 4000
WORKDIR /usr/src/drum-app/
ENTRYPOINT ["gulp", "live"]
