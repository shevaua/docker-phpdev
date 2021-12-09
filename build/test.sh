#!/bin/bash 

PROJECT_PATH=`dirname "${BASH_SOURCE[0]}"`
cd $PROJECT_PATH
. common.sh

docker run -it --rm \
    --name test \
    $devtag:$version \
    /bin/bash
