#!/bin/sh
export NGINX_PROXY_PROTOCOL=false
export container_name="nginx_proxy_dev"
export nginx_http=8080
export nginx_https=8443

config_file="docker-compose.yml"
#container_name=`cat $config_file| grep container_name| awk '{print $2}'`

echo "container name: $container_name"
docker-compose -f $config_file build --no-cache

echo
echo start container $container_name
docker-compose -f $config_file up -d

echo
echo check nginx in $container_name
docker exec -i -t $container_name nginx -t

echo
echo Execute the following command to enter the container
echo docker exec -it $container_name /bin/sh
