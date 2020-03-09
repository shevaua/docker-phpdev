PROJECT_DIR=`pwd`

declare -a dirs=(
    "$PROJECT_DIR/logs/"
    "$PROJECT_DIR/logs/mysql/"
    "$PROJECT_DIR/logs/nginx/"
    "$PROJECT_DIR/logs/fpm/"
    "$PROJECT_DIR/logs/fpm/5.6/"
    "$PROJECT_DIR/logs/fpm/7.0/"
    "$PROJECT_DIR/logs/fpm/7.1/"
    "$PROJECT_DIR/logs/fpm/7.2/"
    "$PROJECT_DIR/logs/fpm/7.3/"
    "$PROJECT_DIR/logs/fpm/7.4/"
)

declare -a logs=(
    "$PROJECT_DIR/logs/mysql/error.log"
    "$PROJECT_DIR/logs/mysql/query.log"
    "$PROJECT_DIR/logs/nginx/debug.log"
    "$PROJECT_DIR/logs/nginx/access.log"
    "$PROJECT_DIR/logs/nginx/error.log"
    "$PROJECT_DIR/logs/fpm/5.6/error.log"
    "$PROJECT_DIR/logs/fpm/7.0/error.log"
    "$PROJECT_DIR/logs/fpm/7.1/error.log"
    "$PROJECT_DIR/logs/fpm/7.2/error.log"
    "$PROJECT_DIR/logs/fpm/7.3/error.log"
    "$PROJECT_DIR/logs/fpm/7.4/error.log"
    "$PROJECT_DIR/logs/fpm/5.6/dev.access.log"
    "$PROJECT_DIR/logs/fpm/7.0/dev.access.log"
    "$PROJECT_DIR/logs/fpm/7.1/dev.access.log"
    "$PROJECT_DIR/logs/fpm/7.2/dev.access.log"
    "$PROJECT_DIR/logs/fpm/7.3/dev.access.log"
    "$PROJECT_DIR/logs/fpm/7.4/dev.access.log"
)

declare -a fpmconfs=(
    "$PROJECT_DIR/conf/php/fpm/5.6/999-dev.conf"
    "$PROJECT_DIR/conf/php/fpm/7.0/999-dev.conf"
    "$PROJECT_DIR/conf/php/fpm/7.1/999-dev.conf"
    "$PROJECT_DIR/conf/php/fpm/7.2/999-dev.conf"
    "$PROJECT_DIR/conf/php/fpm/7.3/999-dev.conf"
    "$PROJECT_DIR/conf/php/fpm/7.4/999-dev.conf"
)

NGINX_CONF="$PROJECT_DIR/conf/nginx/templates/variables.conf"

USERID=`id -u`
GROUPID=`id -g`
