#!/usr/bin/env bash

[ -z "$NGINX_SERVER_NAME" ] && echo "Need to set NGINX_SERVER_NAME" && exit 1;
[ -z "$NGINX_ROOT" ] && echo "Need to set NGINX_ROOT" && exit 1;
[ -z "$APPLICATION_ENV" ] && echo "Need to set APPLICATION_ENV" && exit 1;

sed -i "s#{{NGINX_SERVER_NAME}}#${NGINX_SERVER_NAME}#g" /etc/nginx/sites-enabled/default
sed -i "s#{{NGINX_ROOT}}#${NGINX_ROOT}#g" /etc/nginx/sites-enabled/default
sed -i "s#{{APPLICATION_ENV}}#${APPLICATION_ENV}#g" /etc/nginx/sites-enabled/default

nginx