#!/bin/bash

docker container rm $(docker ps -a -q)
docker image prune -a
docker volume rm $(docker volume ls -f dangling=true)

