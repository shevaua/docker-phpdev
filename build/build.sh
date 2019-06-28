#!/bin/bash

. common.sh

build_ubuntu=1

docker images -a | grep $ubuntutag | grep -q $version
if [ $? ]
then
    ynQuestion="Would you like to rebuild $ubuntutag"
    askYN
    if [ $ynAnswer = 'n' ]
    then
        build_ubuntu=0
    fi
fi

if [ $build_ubuntu = 1 ]
then
    docker build ./container-ubuntu \
        --tag $ubuntutag:$version \
        --tag $ubuntutag:latest \
        --no-cache
fi

docker build ./container-phpdev \
    --tag $devtag:$version \
    --tag $devtag:latest \
    --no-cache
