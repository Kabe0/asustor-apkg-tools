#!/usr/bin/env bash

source VERSION

img="$NAME:$VERSION"
primary="$NAME:$PRIMARY"
latest="$NAME:latest"

docker build -t $img .
docker tag $img $latest
docker tag $img $primary