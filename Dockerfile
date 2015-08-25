FROM dyln/barebone:latest

RUN rm -rf /etc/nginx/sites-available/default && \
    rm -rf /etc/nginx/sites-enabled/default && \
    mkdir /etc/service/nginx && \
    mkdir /etc/service/phpfpm \

COPY nginx.sh        /etc/service/nginx/run
COPY phpfpm.sh       /etc/service/phpfpm/run
COPY vhost.conf      /etc/nginx/sites-enabled/default

RUN chmod +x /etc/service/nginx/run && \
    chmod +x /etc/service/phpfpm/run

EXPOSE 80
EXPOSE 443

VOLUME ["/data"]