#!/bin/sh

docker-compose -f ./src/wordpress-4.5.3/woocommerce-2.6.4/docker-compose.yml stop

docker-compose -f ./src/wordpress-4.5.3/woocommerce-2.6.4/docker-compose.yml rm -f php
docker-compose -f ./src/wordpress-4.5.3/woocommerce-2.6.4/docker-compose.yml rm -f mysql

docker-compose -f ./src/wordpress-4.5.3/woocommerce-2.6.4/docker-compose.yml up --build