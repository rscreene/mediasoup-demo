#!/bin/sh
cd /usr/src/drum-app/server
node ./server.js &
cd /usr/src/drum-app/app
gulp live
