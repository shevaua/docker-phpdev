#!/bin/bash

COMMAND_PATH=`pwd`
COMMAND_WITH_ARGUMENTS=$*

USERID=`id -u`
GROUPID=`id -g`

docker-compose exec -u $USERID:$GROUPID back bash -c "cd $COMMAND_PATH && $COMMAND_WITH_ARGUMENTS"
