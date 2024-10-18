#!/bin/bash

docker rm $(docker ps -q -f 'status=exited')
docker rmi $(docker images -q -f "dangling=true")
docker image prune --all --filter "until=168h"
docker volume prune
docker system prune
