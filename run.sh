#!/bin/bash

COMMAND_PATH=`pwd`
COMMAND_WITH_ARGUMENTS=$*

PROJECT_PATH=`dirname "${BASH_SOURCE[0]}"`
cd $PROJECT_PATH
. common.sh

docker-compose exec -u $USERID:$GROUPID back bash -c "cd $COMMAND_PATH && $COMMAND_WITH_ARGUMENTS"
