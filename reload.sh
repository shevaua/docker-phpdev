#!/bin/bash

PROJECT_PATH=`dirname "${BASH_SOURCE[0]}"`
cd $PROJECT_PATH

service=$1
if [ ! $service ]
then
    service=back
fi

docker-compose restart $service
