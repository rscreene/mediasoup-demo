FROM node:8-alpine

RUN apk add --update alpine-sdk python

COPY server/package.json /usr/src/drum-app/server/
COPY server/server.js /usr/src/drum-app/server/
COPY ./config.example.js /usr/src/drum-app/server/config.js
COPY server/lib/ /usr/src/drum-app/server/lib/
COPY server/certs/ /usr/src/drum-app/server/certs/

RUN cd /usr/src/drum-app/server && npm install



COPY app/package.json /usr/src/drum-app/app/
COPY app/gulpfile.js /usr/src/drum-app/app/
COPY app/index.html /usr/src/drum-app/app/
COPY app/banner.txt /usr/src/drum-app/app/
COPY app/.eslintrc.js /usr/src/drum-app/app/
COPY app/lib/ /usr/src/drum-app/app/lib/
COPY app/resources/ /usr/src/drum-app/app/resources/
COPY app/stylus/ /usr/src/drum-app/app/stylus/

RUN cd /usr/src/drum-app/app && npm install && npm install -g gulp-cli

COPY ./run.sh /usr/src/drum-app/

EXPOSE 4000
WORKDIR /usr/src/drum-app/
ENTRYPOINT ["/usr/src/drum-app/run.sh"]
