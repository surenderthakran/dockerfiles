##
#	Dockerfile for nginx latest version on Ubuntu 14.04
##

FROM surenderthakran/ubuntu:14.04

RUN cd opt/ \
 && wget http://nginx.org/keys/nginx_signing.key \
 && sudo apt-key add nginx_signing.key \
 && echo "" >> /etc/apt/sources.list \
 && echo "deb http://nginx.org/packages/ubuntu/ trusty nginx" >> /etc/apt/sources.list \
 && echo "deb-src http://nginx.org/packages/ubuntu/ trusty nginx" >> /etc/apt/sources.list \
 && apt-get update \
 && apt-get install -y nginx \
 && apt-get clean \
 && apt-get autoclean -y \
 && apt-get autoremove -y
