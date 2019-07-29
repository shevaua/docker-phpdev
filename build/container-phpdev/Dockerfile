FROM shevaua/ubuntu:latest

RUN \
    php -r "copy('https://getcomposer.org/installer', '/composer-setup.php');" \
    && php /composer-setup.php --install-dir=/usr/bin --filename=composer \
    && php -r "unlink('/composer-setup.php');"

RUN \
    sed -i -e 's/include/;include/g' /etc/php/5.6/fpm/php-fpm.conf \
    && echo "include=/etc/php/5.6/fpm/pool.d/*.conf" >> /etc/php/5.6/fpm/php-fpm.conf

COPY scripts/back_start.sh /start.sh
