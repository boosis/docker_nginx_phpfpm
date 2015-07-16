#!/usr/bin/env bash

[ -z "$NGINX_SERVER_NAME" ] && echo "Need to set NGINX_SERVER_NAME" && exit 1;
[ -z "$NGINX_ROOT" ] && echo "Need to set NGINX_ROOT" && exit 1;

sed -i "s#{{NGINX_SERVER_NAME}}#${NGINX_SERVER_NAME}#g" /etc/nginx/sites-enabled/default
sed -i "s#{{NGINX_ROOT}}#${NGINX_ROOT}#g" /etc/nginx/sites-enabled/default

nginx