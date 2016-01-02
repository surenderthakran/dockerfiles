##
#	Dockerfile for nodejs v5.x installation on Ubuntu 14.04 with npm v3.x
##

FROM surenderthakran/ubuntu:trusty

RUN apt-get update \
 && apt-get -y upgrade \
 && curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash - \
 && apt-get install -y nodejs \
 && npm cache clean \
 && apt-get clean \
 && apt-get autoclean -y \
 && apt-get autoremove -y
