#! /bin/bash

# Perintah untuk build image dari dockerfile
docker build -t bagassetia/karsajobs:latest .

# Perintah untuk login ke docker hub dengan menggunakan variable password yang sudah disimpan
echo $PASSWORD_DOCKER_HUB | docker login -u bagassetia --password-stdin

# Perintah untuk push image yang sudah dibuild ke docker hub
docker push bagassetia/karsajobs:latest