#!/bin/bash

set -eu

images=(openjdk:6 openjdk:7 openjdk:8 openjdk:9)
for image in ${images[@]}; do
  rm -rf ${image/:/}
  cp -r _templates ${image/:/}
  sed -i '' -e "s/__image__/$image/g" ${image/:/}/Dockerfile
done
