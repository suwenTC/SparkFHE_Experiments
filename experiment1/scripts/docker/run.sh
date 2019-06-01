#!/bin/bash

> /proj/shield-PG0/SparkFHE/data/tmp.txt

job_name=$1
num_jobs=$2
container_name=$3

docker run -d -v /proj/shield-PG0/SparkFHE/data/:/proj/shield-PG0/SparkFHE/data/ --name $container_name sparkfhe bash /run_dot_prod.sh $num_jobs > /dev/null
python3 log_resource.py $num_jobs $container_name > "/proj/shield-PG0/SparkFHE/data/$job_name.csv"

#docker rm -f $container_name
echo 'Terminated'
