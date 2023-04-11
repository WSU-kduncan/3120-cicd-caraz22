#!/bin/bash

docker pull caraz22/3120-proj4
docker stop container
docker rm container
docker image prune -f
docker run -d -p 80:80 --name container caraz22/3120-proj4