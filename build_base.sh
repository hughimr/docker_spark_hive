#!/bin/bash
# build the base images for master and slave
cp ymlfiles/base.yml Dockerfile
sudo docker build -t="flat2010:spark-base" .
