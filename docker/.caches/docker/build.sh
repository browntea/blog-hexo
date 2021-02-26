#!/bin/bash

IMAGE=harbor.hm.browntea.cn/customized/hexo
TAG=4.2.0-node15-builder


docker build -f Dockerfile.hexo -t $IMAGE:$TAG .


IMAGE=harbor.hm.browntea.cn/browntea/blog-hexo
TAG=0.1

mkdir -p .caches
# rm -rf .caches/*

# rsync -aP --exclude node_modules --exclude .git* ../* .caches/

docker build -f Dockerfile -t $IMAGE:$TAG .

