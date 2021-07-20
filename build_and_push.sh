#!/bin/bash

set -e

VERSION="1.1"

docker build -t rainkinz/s3rver:$VERSION .

docker push rainkinz/s3rver:$VERSION

docker tag rainkinz/s3rver:$VERSION  rainkinz:latest
docker push rainkinz/s3rver:latest
