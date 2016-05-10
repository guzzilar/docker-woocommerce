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

chown -R www-data:www-data .

apache2 -D FOREGROUND

