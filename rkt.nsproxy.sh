#!/bin/bash

sudo rkt run \
	--insecure-options=all \
        --volume redis,kind=host,source=/tmp/ \
	--debug \
	--port=dns-tcp:8054 \
	--port=dns-udp:8054 \
	--port=api:8088 \
        unixvoid.com/nsproxy

#CURRENT_DIR=$(pwd)
#--port=dns:8053 \
#--port=api:8085 \
#--volume redis,kind=host,source=$CURRENT_DIR \
#--net=host \
