#!/bin/bash

# FPM5.6
/etc/init.d/php5.6-fpm start
status=$?
if [ $status -ne 0 ]; then
    echo "Failed to start php5.6-fpm: $status"
    exit $status
fi

# FPM7.0
/etc/init.d/php7.0-fpm start
status=$?
if [ $status -ne 0 ]; then
    echo "Failed to start php7.0-fpm: $status"
    exit $status
fi

# FPM7.1
/etc/init.d/php7.1-fpm start
status=$?
if [ $status -ne 0 ]; then
    echo "Failed to start php7.1-fpm: $status"
    exit $status
fi

# FPM7.2
/etc/init.d/php7.2-fpm start
status=$?
if [ $status -ne 0 ]; then
    echo "Failed to start php7.2-fpm: $status"
    exit $status
fi

# FPM7.3
/etc/init.d/php7.3-fpm start
status=$?
if [ $status -ne 0 ]; then
    echo "Failed to start php7.3-fpm: $status"
    exit $status
fi

# FPM7.4
/etc/init.d/php7.4-fpm start
status=$?
if [ $status -ne 0 ]; then
    echo "Failed to start php7.4-fpm: $status"
    exit $status
fi

# FPM8.0
/etc/init.d/php8.0-fpm start
status=$?
if [ $status -ne 0 ]; then
    echo "Failed to start php8.0-fpm: $status"
    exit $status
fi

# FPM8.1
/etc/init.d/php8.1-fpm start
status=$?
if [ $status -ne 0 ]; then
    echo "Failed to start php8.1-fpm: $status"
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
    if [ $NGINX_STATUS -ne 0 ]; then
        echo "NGINX has already exited."
        exit 1
    fi

    ps aux | grep "php-fpm: master" | grep "5.6" -q
    FPM56_STATUS=$?
    if [ $FPM56_STATUS -ne 0 ]; then
        echo "FPM5.6 has already exited."
        exit 1
    fi

    ps aux | grep "php-fpm: master" | grep "7.0" -q
    FPM70_STATUS=$?
    if [ $FPM70_STATUS -ne 0 ]; then
        echo "FPM7.0 has already exited."
        exit 1
    fi

    ps aux | grep "php-fpm: master" | grep "7.1" -q
    FPM71_STATUS=$?
    if [ $FPM71_STATUS -ne 0 ]; then
        echo "FPM7.1 has already exited."
        exit 1
    fi

    ps aux | grep "php-fpm: master" | grep "7.2" -q
    FPM72_STATUS=$?
    if [ $FPM72_STATUS -ne 0 ]; then
        echo "FPM7.2 has already exited."
        exit 1
    fi

    ps aux | grep "php-fpm: master" | grep "7.3" -q
    FPM73_STATUS=$?
    if [ $FPM73_STATUS -ne 0 ]; then
        echo "FPM7.3 has already exited."
        exit 1
    fi

    ps aux | grep "php-fpm: master" | grep "7.4" -q
    FPM74_STATUS=$?
    if [ $FPM74_STATUS -ne 0 ]; then
        echo "FPM7.4 has already exited."
        exit 1
    fi

    ps aux | grep "php-fpm: master" | grep "8.0" -q
    FPM80_STATUS=$?
    if [ $FPM80_STATUS -ne 0 ]; then
        echo "FPM8.0 has already exited."
        exit 1
    fi

    ps aux | grep "php-fpm: master" | grep "8.1" -q
    FPM81_STATUS=$?
    if [ $FPM81_STATUS -ne 0 ]; then
        echo "FPM8.1 has already exited."
        exit 1
    fi

done
