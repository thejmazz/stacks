#!/bin/bash

docker network create \
    --driver overlay \
    --attachable \
    traefik_net

docker stack deploy --compose-file traefik.stack.yml traefik
