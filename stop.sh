#!/bin/sh

config_file="docker-compose.yml"
container_name=`cat $config_file| grep container_name| awk '{print $2}'`

echo "stop container name: $container_name"
docker rm -f $container_name