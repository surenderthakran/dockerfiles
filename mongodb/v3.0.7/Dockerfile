##
#	Dockerfile for mongodb 3.0.7 installation on Ubuntu Trusty Thar
##

FROM surenderthakran/ubuntu:trusty

MAINTAINER Surender Thakran

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 \
 && echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.0.list \
 && apt-get update \
 && apt-get install -y mongodb-org=3.0.7 mongodb-org-server=3.0.7 mongodb-org-shell=3.0.7 mongodb-org-mongos=3.0.7 mongodb-org-tools=3.0.7 \
 && echo "mongodb-org hold" | dpkg --set-selections \
 && echo "mongodb-org-server hold" | dpkg --set-selections \
 && echo "mongodb-org-shell hold" | dpkg --set-selections \
 && echo "mongodb-org-mongos hold" | dpkg --set-selections \
 && echo "mongodb-org-tools hold" | dpkg --set-selections \
 && mkdir -p /data/db

EXPOSE 27017

ENTRYPOINT ["/usr/bin/mongod"]
