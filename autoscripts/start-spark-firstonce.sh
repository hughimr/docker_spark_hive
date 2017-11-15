#!/bin/bash

cd ../spark_compose
docker-compose up -d

cd ../autoscripts
./initial_spark_all.sh

./start_all_in_order.sh


docker exec -it spark-master bash