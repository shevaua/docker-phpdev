#!/bin/bash

DOCKER_FILE_SAMPLE="docker-compose-sample.yml"
DOCKER_FILE="docker-compose.yml"

PROJECT_PATH=`dirname "${BASH_SOURCE[0]}"`

cd $PROJECT_PATH
PROJECT_DIR=`pwd`

DIR_SITES=$PROJECT_DIR"/sites"

cp $DOCKER_FILE_SAMPLE $DOCKER_FILE
sed -i -e "s#<PWD_PATH>#${DIR_SITES}#g" $DOCKER_FILE

chmod 777 logs/mysql/error.log logs/mysql/query.log
