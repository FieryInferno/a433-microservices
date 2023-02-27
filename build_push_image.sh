#! /bin/bash

docker build -t item-app:v1 .
docker images
docker tag item-app:v1 bagassetia/item-app:v1
echo $PASSWORD_DOCKER_HUB | docker login -u bagassetia --password-stdin
docker push bagassetia/item-app:v1
