#!/bin/bash

. common.sh

build_ubuntu=0

docker images -a | grep $ubuntutag | grep -q $version

ubuntu_found=$?

if [ $ubuntu_found = 0 ]
then
    ynQuestion="Would you like to rebuild $ubuntutag"
    askYN
    if [ $ynAnswer = 'y' ]
    then
        build_ubuntu=1
    fi
else
    build_ubuntu=1
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
