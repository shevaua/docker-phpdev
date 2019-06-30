#!/bin/bash

PROJECT_PATH=`dirname "${BASH_SOURCE[0]}"`

cd $PROJECT_PATH
PROJECT_DIR=`pwd`

FILE=$PROJECT_DIR/logs/nginx/error.log 
if [ -f $FILE ]
then
    echo "" > $FILE
fi

FILE=$PROJECT_DIR/logs/nginx/access.log
if [ -f $FILE ]
then
    echo "" > $FILE
fi

FILE=$PROJECT_DIR/logs/nginx/debug.log
if [ -f $FILE ]
then
    echo "" > $FILE
fi

FILE=$PROJECT_DIR/logs/mysql/query.log
if [ -f $FILE ]
then
    echo "" > $FILE
fi

FILE=$PROJECT_DIR/logs/mysql/error.log
if [ -f $FILE ]
then
    echo "" > $FILE
fi
