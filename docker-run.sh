#!/bin/bash

docker run -d --name="Zoneminder" \
--net="bridge" \
--privileged="false" \
--shm-size="8G" \
--restart="unless-stopped" \
-h "zoneminder.fritz.box" \
-p 8443:443/tcp \
-p 9000:9000/tcp \
-e TZ="Europe/Andorra" \
-e PUID="99" \
-e PGID="100" \
-e MULTI_PORT_START="0" \
-e MULTI_PORT_END="0" \
-v "/mnt/Zoneminder":"/config":rw \
-v "/mnt/Zoneminder/data":"/var/cache/zoneminder":rw \
dlandon/zoneminder.machine.learning
