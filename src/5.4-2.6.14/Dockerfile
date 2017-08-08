FROM php:5.4-apache

LABEL maintainer "Guzzilar"

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2

RUN echo "mysql-server-5.4 mysql-server/root_password password root" | debconf-set-selections
RUN echo "mysql-server-5.4 mysql-server/root_password_again password root" | debconf-set-selections

RUN apt-get update && apt-get install -y --force-yes \
    unzip \
    vim \
    mysql-client \
    mysql-server \
    && rm -rf /var/lib/apt

RUN docker-php-ext-install mysqli

# Add INSTALL.sh.
COPY ./bin/install /var/www/bin/install
RUN chmod +x /var/www/bin/install

# Download WP-CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

# Apache configuration
RUN mkdir -p $APACHE_RUN_DIR $APACHE_LOCK_DIR $APACHE_LOG_DIR
RUN a2enmod rewrite
RUN chown www-data:www-data -R /var/www/html/

EXPOSE 80
