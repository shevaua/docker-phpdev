# Use an official last ubuntu image
FROM ubuntu:latest

# Avoiding tzdata configuration
ARG DEBIAN_FRONTEND=noninteractive

# Install additional packages
RUN \
    apt-get update \
	&& apt-get install -y tzdata software-properties-common \
    && add-apt-repository ppa:ondrej/php \
	&& apt-get update \
    && apt-get install -y nginx \
    && apt-get install -y php5.6 php5.6-fpm \
    && apt-get install -y php7.0 php7.0-fpm \
    && apt-get install -y php7.1 php7.1-fpm \
    && apt-get install -y php7.2 php7.2-fpm
