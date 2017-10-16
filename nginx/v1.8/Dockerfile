##
#	Dockerfile for nginx version 1.8 on Ubuntu 14.04
##

FROM surenderthakran/ubuntu:trusty

MAINTAINER Surender Thakran (https://github.com/surenderthakran)

ENV NGINX_VERSION 1.8.1-1~trusty

RUN cd opt/ \
 && echo "" >> /etc/apt/sources.list \
 && echo "deb http://nginx.org/packages/ubuntu/ trusty nginx" >> /etc/apt/sources.list \
 && echo "deb-src http://nginx.org/packages/ubuntu/ trusty nginx" >> /etc/apt/sources.list \
 && wget http://nginx.org/keys/nginx_signing.key \
 && sudo apt-key add nginx_signing.key \
 && apt-get update \
 && apt-get install -y ca-certificates nginx=${NGINX_VERSION} gettext-base \
 && apt-get clean \
 && apt-get autoclean -y \
 && apt-get autoremove -y

RUN rm -v /etc/nginx/nginx.conf

ADD nginx.conf /etc/nginx/

RUN mkdir /etc/nginx/sites-enabled/

EXPOSE 80 443

CMD ["service", "nginx", "start"]
