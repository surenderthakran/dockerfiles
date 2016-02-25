##
#	Dockerfile for nginx latest stable version on Ubuntu 14.04
##

FROM surenderthakran/ubuntu:trusty

MAINTAINER Surender Thakran (https://github.com/surenderthakran)

RUN cd opt/ \
 && echo "" >> /etc/apt/sources.list \
 && echo "deb http://nginx.org/packages/ubuntu/ trusty nginx" >> /etc/apt/sources.list \
 && echo "deb-src http://nginx.org/packages/ubuntu/ trusty nginx" >> /etc/apt/sources.list \
 && wget http://nginx.org/keys/nginx_signing.key \
 && sudo apt-key add nginx_signing.key \
 && apt-get update \
 && apt-get install -y nginx \
 && apt-get clean \
 && apt-get autoclean -y \
 && apt-get autoremove -y \
 && update-rc.d nginx defaults

EXPOSE 80 443

# CMD ["nginx"]
CMD ["nginx", "-g", "daemon off;"]
