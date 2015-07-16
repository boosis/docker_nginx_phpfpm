FROM dyln/barebone:latest

RUN rm -rf /etc/nginx/sites-available/default
RUN rm -rf /etc/nginx/sites-enabled/default
ADD vhost.conf /etc/nginx/sites-enabled/default

RUN mkdir           /etc/service/nginx
ADD nginx.sh        /etc/service/nginx/run
RUN chmod +x        /etc/service/nginx/run
RUN mkdir           /etc/service/phpfpm
ADD phpfpm.sh       /etc/service/phpfpm/run
RUN chmod +x        /etc/service/phpfpm/run

EXPOSE 80
EXPOSE 443
# End Nginx-PHP

VOLUME ["/data"]