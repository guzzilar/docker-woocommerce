#!/bin/sh

docker-compose -f ./src/wordpress-4.5.2/woocommerce-2.5.5/docker-compose.yml stop

docker-compose -f ./src/wordpress-4.5.2/woocommerce-2.5.5/docker-compose.yml rm -f wp452_woocommerce255
docker-compose -f ./src/wordpress-4.5.2/woocommerce-2.5.5/docker-compose.yml rm -f wp452_woocommerce255_db

docker-compose -f ./src/wordpress-4.5.2/woocommerce-2.5.5/docker-compose.yml up --build