#!/bin/bash

PROJECT_PATH=`dirname "${BASH_SOURCE[0]}"`
cd $PROJECT_PATH

docker-compose down
