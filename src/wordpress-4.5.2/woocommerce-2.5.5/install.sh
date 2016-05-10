#!/bin/sh

###
# OpenCart 1.5.6.4 directory: /var/www/html/wordpress-4.5.2/woocommerce-2.5.5
# Build directory:            /var/www/html/wordpress-4.5.2/woocommerce-2.5.5/_build
###
cd ./wordpress-4.5.2/woocommerce-2.5.5
rm -R ./_build
mkdir ./_build

# DEPLOY
curl -O https://wordpress.org/wordpress-4.5.2.zip
unzip -q wordpress-4.5.2.zip -d ./_build
rm wordpress-4.5.2.zip

# TEST
# unzip -q ./_resources/wordpress-4.5.2.zip -d ./_build

mv ./_build/wordpress/* ./_build/.
rm -R ./_build/wordpress

cd ./_build

wp core config \
    --allow-root \
    --skip-check \
    --dbhost=wp452_woocommerce255_db \
    --dbname=wp452_woocommerce255_db \
    --dbuser=root \
    --dbpass=root \
    --extra-php <<PHP
        define( 'WP_DEBUG', true );
        define( 'WP_DEBUG_LOG', true );
PHP

wp core install \
    --allow-root \
    --url=http://192.168.99.100:8080/wordpress-4.5.2/woocommerce-2.5.5/_build \
    --title=WooCommerce \
    --admin_user=admin \
    --admin_password=admin \
    --admin_email=iam.nuttanon@gmail.com

cd ../

chown -R www-data:www-data .

apache2 -D FOREGROUND

