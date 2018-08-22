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
export ROOM_ID=<name of room>
export APP_ADDRESS=<external address output by server>
docker run <client imageId>
```
