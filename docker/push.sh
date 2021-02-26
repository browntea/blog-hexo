#!/bin/bash

IMAGE=harbor.hm.browntea.cn/customized/hexo
TAG=4.2.0-node15-builder
docker push $IMAGE:$TAG

echo "############################################################" 
IMAGE=harbor.hm.browntea.cn/browntea/blog-hexo
TAG=0.1
docker push $IMAGE:$TAG
