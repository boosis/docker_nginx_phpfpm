#!/usr/bin/env bash

[ -z "$XDEBUG_REMOTE_HOST" ] && echo "Need to set XDEBUG_REMOTE_HOST" && exit 1;

sed -i "s#{{XDEBUG_REMOTE_HOST}}#${XDEBUG_REMOTE_HOST}#g" /etc/php/5.6/mods-available/xdebug.ini

php-fpm5.6 -c /etc/php/5.6/fpm