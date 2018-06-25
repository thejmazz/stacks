#!/bin/bash

docker service create \
    --name expose-remote-api \
    --publish target=2375,published=3376,mode=host \
    --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
    --constraint "node.hostname==swarm-manager-01" \
    jarkt/docker-remote-api
