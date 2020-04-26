#!/bin/bash 

. common.sh

docker run -it --rm \
    --name test \
    $devtag:$version \
    /bin/bash
