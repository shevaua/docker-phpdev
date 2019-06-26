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
    && apt-get install -y nginx php7.1

CMD ["/bin/bash"]
