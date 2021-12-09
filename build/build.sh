#!/bin/bash

PROJECT_PATH=`dirname "${BASH_SOURCE[0]}"`
cd $PROJECT_PATH
. common.sh

build_ubuntu=0
build_failed=0

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
    echo "Building ubuntu"
    docker build ./container-ubuntu \
        --tag $ubuntutag:$version \
        --tag $ubuntutag:latest \
        --no-cache
    
    build_failed=$?
fi

if [ $build_failed = 0 ]
then
    echo "Building phpdev"
    docker build ./container-phpdev \
        --tag $devtag:$version \
        --tag $devtag:latest \
        --no-cache
fi
