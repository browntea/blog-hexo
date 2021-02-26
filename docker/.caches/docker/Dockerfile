from harbor.hm.browntea.cn/customized/hexo:4.2.0-node15-builder

MAINTAINER Abraham Wu


ENV TZ="Asia/Shanghai" HOME="/opt/node15"

WORKDIR ${HOME}

COPY .caches /tmp/.caches

RUN mv /tmp/.caches/* /opt/node15 
#	mv /tmp/hexo/sample.4.2.0/node_modules /opt/node15/ && \
#	npm install --force --registry https://registry.npm.taobao.org 

RUN	ls -lha && \
	hexo generate && \
	ls -lha

EXPOSE 80 4000

