#!/usr/bin/env bash
source VERSION

img="$NAME:$VERSION"
primary="$NAME:$PRIMARY"
latest="$NAME:latest"

docker push $NAME
