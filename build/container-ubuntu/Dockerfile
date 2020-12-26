# Use an official last stable ubuntu image
FROM ubuntu:20.04

# Avoiding tzdata configuration
ARG DEBIAN_FRONTEND=noninteractive

# Install additional packages
RUN \
    apt-get update \
	&& apt-get install -y tzdata software-properties-common add-apt-key \
    && apt-get install -y curl \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && add-apt-repository ppa:ondrej/php \
	&& apt-get update \
    && apt-get install -y nginx \
    && apt-get install -y php5.6 php5.6-fpm php5.6-curl php5.6-gd php5.6-mbstring php5.6-sqlite3 php5.6-mcrypt php5.6-mysql php5.6-xml php5.6-zip \
    && apt-get install -y php7.0 php7.0-fpm php7.0-curl php7.0-gd php7.0-mbstring php7.0-sqlite3 php7.0-mcrypt php7.0-mysql php7.0-xml php7.0-zip \
    && apt-get install -y php7.1 php7.1-fpm php7.1-curl php7.1-gd php7.1-mbstring php7.1-sqlite3 php7.1-mcrypt php7.1-mysql php7.1-xml php7.1-zip php7.1-xmlrpc php7.1-pgsql php7.1-soap \
    && apt-get install -y php7.2 php7.2-fpm php7.2-curl php7.2-gd php7.2-mbstring php7.2-sqlite3               php7.2-mysql php7.2-xml php7.2-zip php7.2-xmlrpc php7.2-pgsql php7.2-soap php7.2-xsl php7.2-bcmath php7.2-bz2 \
    && apt-get install -y php7.3 php7.3-fpm php7.3-curl php7.3-gd php7.3-mbstring php7.3-sqlite3               php7.3-mysql php7.3-xml php7.3-zip php7.3-xmlrpc php7.3-pgsql php7.3-soap \
    && apt-get install -y php7.4 php7.4-fpm php7.4-curl php7.4-gd php7.4-mbstring php7.4-sqlite3               php7.4-mysql php7.4-xml php7.4-zip php7.4-xmlrpc php7.4-pgsql php7.4-soap \
    && apt-get install -y php8.0 php8.0-fpm php8.0-curl php8.0-gd php8.0-mbstring php8.0-sqlite3               php8.0-mysql php8.0-xml php8.0-zip               php8.0-pgsql php8.0-soap \
    && apt-get install -y php-xdebug php-memcache php-memcached php-raphf php-redis php-mongodb \
    && apt-get install -y unzip \
    && apt-get install -y nodejs \
    && apt-get purge -y curl \
    && rm -rf /var/lib/apt/lists/*
