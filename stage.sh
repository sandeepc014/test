#!/bin/bash

cd /var/www/decomission/test

git fetch --all && git checkout composer.lock && git stash && git checkout v8.4.1 && git stash pop

