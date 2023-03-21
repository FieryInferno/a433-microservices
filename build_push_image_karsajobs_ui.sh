#! /bin/bash

# Perintah untuk build image
docker build -t bagassetia/karsajobs-ui:latest .

# Perintah untuk login ke docker hub menggunakan variable password yang sudah dibuat
echo $PASSWORD_DOCKER_HUB | docker login -u bagassetia --password-stdin

# Peritnah untuk push image yang sudah dibuild ke docker hub
docker push bagassetia/karsajobs-ui:latest