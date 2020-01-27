#!/bin/bash

cd /var/www/webroots/test/

read site_version

sed '6 s/.*/APP_SITE_VERSION="'$site_version'"/' .env


