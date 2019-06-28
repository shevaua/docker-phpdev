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
    && apt-get install -y php7.1 php7.1-fpm

CMD ["/bin/bash"]
