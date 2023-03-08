#! /bin/bash
docker build -t bagassetia/karsajobs:latest .
echo $PASSWORD_DOCKER_HUB | docker login -u bagassetia --password-stdin
docker push bagassetia/karsajobs:latest