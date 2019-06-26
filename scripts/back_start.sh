#!/bin/bash

# FPM7.1
/etc/init.d/php7.1-fpm start
status=$?
if [ $status -ne 0 ]; then
    echo "Failed to start php7.1-fpm: $status"
    exit $status
fi

# NGINX
/etc/init.d/nginx start
status=$?
if [ $status -ne 0 ]; then
    echo "Failed to start nginx: $status"
    exit $status
fi

while sleep 60; do
    ps aux | grep "nginx: master" | grep -v -q grep
    NGINX_STATUS=$?
    ps aux | grep "php-fpm: master" | grep "7.1" -q
    FPM71_STATUS=$?
    
    if [ $NGINX_STATUS -ne 0 ]; then
        echo "NGINX has already exited."
        exit 1
    fi

    if [ $FPM71_STATUS -ne 0 ]; then
        echo "FPM7.1 has already exited."
        exit 1
    fi
done
