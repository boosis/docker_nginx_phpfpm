FROM dyln/barebone:latest

RUN rm -rf /etc/nginx/sites-available/default && \
    rm -rf /etc/nginx/sites-enabled/default && \
    rm -rf /etc/service/nginx/run && \
    rm -rf /etc/service/phpfpm/run && \
    mkdir /etc/service/nginx && \
    mkdir /etc/service/phpfpm && \
    mkdir /run/php

COPY nginx.sh        /etc/service/nginx/run
COPY phpfpm.sh       /etc/service/phpfpm/run
COPY vhost.conf      /etc/nginx/sites-enabled/default

RUN chmod +x /etc/service/nginx/run && \
    chmod +x /etc/service/phpfpm/run

EXPOSE 80
EXPOSE 443

VOLUME ["/data"]