FROM shevaua/ubuntu:latest

RUN \
    php -r "copy('https://getcomposer.org/installer', '/composer-setup.php');" \
    && php /composer-setup.php --install-dir=/usr/bin --filename=composer \
    && php -r "unlink('/composer-setup.php');"

COPY scripts/back_start.sh /start.sh
