#!/usr/bin/env bash

/usr/bin/sed -i "s/{{NGINX_SERVER_NAME}}/${NGINX_SERVER_NAME}/" /etc/nginx/sites-enabled/default
/usr/bin/sed -i "s/{{NGINX_ROOT}}/${NGINX_ROOT}/" /etc/nginx/sites-enabled/default

nginx