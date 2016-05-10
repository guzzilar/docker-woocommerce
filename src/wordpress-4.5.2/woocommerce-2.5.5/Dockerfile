FROM php:5.6-apache

RUN usermod -u 1000 www-data

RUN apt-get update && apt-get install -y \
        unzip \

    && docker-php-ext-install mysqli

# WAIT-FOR-IT.sh
ADD ./wait-for-it.sh ./wait-for-it.sh
RUN chmod +x ./wait-for-it.sh

# INSTALL.sh
ADD ./install.sh ./wordpress-4.5.2-woocommerce-2.5.5-install.sh
RUN chmod +x ./wordpress-4.5.2-woocommerce-2.5.5-install.sh

# WP-CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

ADD . ./wordpress-4.5.2/woocommerce-2.5.5

EXPOSE 80
EXPOSE 8080
