#!/bin/bash

PROJECT_PATH=`dirname "${BASH_SOURCE[0]}"`
cd $PROJECT_PATH
. common.sh

for dir in "${dirs[@]}"
do
    if [ ! -d $dir ]
    then
        mkdir $dir
        echo "$dir is created"
    fi
done

for file in "${logs[@]}"
do
    if [ ! -f $file ]
    then
        echo "" > $file
        chmod 777 $file
        echo "$file is created"
    fi
done

DOCKER_FILE_SAMPLE="docker-compose-sample.yml"
DOCKER_FILE="docker-compose.yml"
NGINX_CONF=conf/nginx/templates/variables.conf
DIR_SITES=$PROJECT_DIR"/sites"

if [ ! -f $DOCKER_FILE ]
then
    cp $DOCKER_FILE_SAMPLE $DOCKER_FILE
    sed -i -e "s#<PWD_PATH>#${DIR_SITES}#g" $DOCKER_FILE
    echo "$DOCKER_FILE is created"
    read -p 'Type your subnet prefix(192.168.111) or leave it empty for later configuration: ' subnet
    if [ $subnet ]
    then
        sed -i -e "s#<network>#${subnet}.0/24#g" $DOCKER_FILE
        sed -i -e "s#<dev_ip>#${subnet}.1#g" $DOCKER_FILE
        sed -i -e "s#<be_ip>#${subnet}.2#g" $DOCKER_FILE
        sed -i -e "s#<db_ip>#${subnet}.3#g" $DOCKER_FILE
        sed -i -e "s#<mc_ip>#${subnet}.4#g" $DOCKER_FILE
        echo "Network ${subnet}.0/24 is configured"
    fi
    read -p 'Type mysql password or leave it empty for later configuration: ' rootpass
    if [ $rootpass ]
    then
        sed -i -e "s#<mysql_pass>#${rootpass}#g" $DOCKER_FILE
        echo "DB password ${rootpass} is configured"
    fi
fi

echo "set \$sites $DIR_SITES;" > $NGINX_CONF
