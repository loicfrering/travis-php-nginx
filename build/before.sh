#!/usr/bin/env bash

set -e

cp ~/.phpenv/versions/$(phpenv version-name)/etc/php-fpm.conf.default ~/.phpenv/versions/$(phpenv version-name)/etc/php-fpm.conf
~/.phpenv/versions/$(phpenv version-name)/sbin/php-fpm

sed -e "s|%TRAVIS_BUILD_DIR%|$TRAVIS_BUILD_DIR|g" build/travis-php-nginx.conf
sudo cp build/travis-php-nginx.conf /etc/nginx/sites-available/default
sudo service nginx restart
