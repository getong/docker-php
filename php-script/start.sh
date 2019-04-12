#!/bin/sh

# 镜像名称
IMAGE_NAME=php:fpm-alpine
# 容器名称，如果有名称重复，修改这个配置
CONTAINER_NAME=php

docker run -d --name $CONTAINER_NAME -v $(pwd):/var/www/backstage $IMAGE_NAME
