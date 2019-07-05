#!/bin/bash

DOCKER_FILE_SAMPLE="docker-compose-sample.yml"
DOCKER_FILE="docker-compose.yml"

PROJECT_PATH=`dirname "${BASH_SOURCE[0]}"`

NGINX_CONF=conf/nginx/templates/variables.conf

cd $PROJECT_PATH
PROJECT_DIR=`pwd`

DIR_SITES=$PROJECT_DIR"/sites"

if [ ! -f $DOCKER_FILE ]
then
    cp $DOCKER_FILE_SAMPLE $DOCKER_FILE
    sed -i -e "s#<PWD_PATH>#${DIR_SITES}#g" $DOCKER_FILE
fi

echo "set \$sites $DIR_SITES;" > $NGINX_CONF

chmod 777 \
    logs/mysql/error.log \
    logs/mysql/query.log \
    logs/nginx/debug.log \
    logs/nginx/error.log \
    logs/nginx/access.log
