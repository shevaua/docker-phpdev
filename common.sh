PROJECT_DIR=`pwd`

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
    "$PROJECT_DIR/logs/fpm/5.6/dev.access.log"
    "$PROJECT_DIR/logs/fpm/7.0/dev.access.log"
    "$PROJECT_DIR/logs/fpm/7.1/dev.access.log"
    "$PROJECT_DIR/logs/fpm/7.2/dev.access.log"
)
