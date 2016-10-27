#!/bin/bash

sudo rkt run \
	--insecure-options=all \
        --volume redis,kind=host,source=/tmp/ \
	--debug \
	--port=dns-tcp:8053 \
	--port=dns-udp:8053 \
        unixvoid.com/cryon

#CURRENT_DIR=$(pwd)
#--port=dns:8053 \
#--port=api:8085 \
#--volume redis,kind=host,source=$CURRENT_DIR \
#--net=host \
