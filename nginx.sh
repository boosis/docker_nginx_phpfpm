#!/usr/bin/env bash

/bin/sed -i "s/{{NGINX_SERVER_NAME}}/${NGINX_SERVER_NAME}/" /etc/nginx/sites-enabled/default
/bin/sed -i "s/{{NGINX_ROOT}}/${NGINX_ROOT}/" /etc/nginx/sites-enabled/default

nginx