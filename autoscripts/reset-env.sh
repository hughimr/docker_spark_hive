#!/bin/bash

./stop_all_in_order.sh
./stop_all_container.sh
./remove_all_containers.sh
./remove_cluster_images.sh

docker network prune

sudo rm -rf /home/develop/hadoop_datas/*
sudo rm -rf /home/develop/spark_datas/*
