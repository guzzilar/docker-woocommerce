#!/bin/sh

cd ./wordpress-4.5.3/woocommerce-2.6.4
rm -R ./_build
mkdir ./_build

# DEPLOY
curl -O https://wordpress.org/wordpress-4.5.3.zip
unzip -q wordpress-4.5.3.zip -d ./_build
rm wordpress-4.5.3.zip

mv ./_build/wordpress/* ./_build/.
rm -R ./_build/wordpress

cd ./_build

wp core config \
    --allow-root \
    --skip-check \
    --dbhost=mysql \
    --dbname=www \
    --dbuser=root \
    --dbpass=root \
    --extra-php <<PHP
        define( 'WP_DEBUG', true );
        define( 'WP_DEBUG_LOG', true );
PHP

wp core install \
    --allow-root \
    --url=http://192.168.99.100/wordpress-4.5.3/woocommerce-2.6.4/_build \
    --title=OmiseWooCommerce \
    --admin_user=admin \
    --admin_password=admin \
    --admin_email=iam.nuttanon@gmail.com

cd ../

chown -R www-data:www-data .

apache2 -D FOREGROUND

