#!/bin/bash

cd /var/www/webroots/test/



sed '6 s/.*/APP_SITE_VERSION="'$site_version'"/' .env


