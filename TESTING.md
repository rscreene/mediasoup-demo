Pre-requisite:

```
export DOCKER_HOST='tcp://dms.vhost.work:2375'
```

Build server:

```
docker build .
```

Run server:

```
docker run --net host <server imageId>
```

Build client:

```
docker build .
```

Run client:

```
docker run --net host --interactive  --cap-add=SYS_ADMIN --env ROOM_ID=ROOM1 --env APP_ADDRESS=192.168.47.106:3000 \
  <client imageId> node /puppeteer.js
```
