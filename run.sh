#!/bin/sh

# To build container:
#   export DOCKER_HOST='tcp://dms.vhost.work:2375'
#   docker build .

# and on the VM:
#   docker run --net host <imageID.

cd /usr/src/drum-app/server
node ./server.js &
cd /usr/src/drum-app/app
gulp live
