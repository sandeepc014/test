#!/bin/bash

cd /var/www/webroots/test/

git fetch --all && git checkout composer.lock && git stash && git checkout v8.7.1 && git stash pop

sudo chown -R ubuntu:www-data storage/ bootstrap/ && sudo chmod -R 775 storage/ bootstrap/

read ver

sed '6 s/.*/APP_SITE_VERSION="'$ver'"/' .env


