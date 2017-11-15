#!/bin/bash
# build the images for master and slave
cp ymlfiles/build.yml Dockerfile
sudo docker build -t="hugh:spark" .
