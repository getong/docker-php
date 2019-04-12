#!/bin/sh

# 镜像名称
IMAGE_NAME=nginx:1.15.11-alpine
# 容器名称，如果有名称重复，修改这个配置
CONTAINER_NAME=nginx_test

# 容器内部端口, 对应config目录里面的端口
CONTAINER_PORT=1443
# 主机访问端口, 通过127.0.0.1:$HOST_PORT
HOST_PORT=1443
## 如果有多个端口，可以添加多个 -p 选项
## 配置文件放到 config目录


docker run -d --name $CONTAINER_NAME -p $HOST_PORT:$CONTAINER_PORT -v $(pwd)/config:/etc/nginx/conf.d $IMAGE_NAME
