#! /bin/bash

# Ini adalah perintah untuk membuat docker image
docker build -t item-app:v1 .

# Ini adalah perintah untuk menampilkan images yang ada di local
docker images

# Ini adalah perintah untuk mengganti nama images agar sesuai dengan format docker registry
docker tag item-app:v1 bagassetia/item-app:v1

# Ini adalah perintah untuk login ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u bagassetia --password-stdin

# Ini adalah perintah untuk menyimpan image yang sudah dibuat ke docker registry
docker push bagassetia/item-app:v1
