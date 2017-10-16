##
#       Dockerfile for mysql 5.7 installation on Ubuntu Trusty Thar
##

FROM surenderthakran/ubuntu:trusty

MAINTAINER Surender Thakran (https://in.linkedin.com/in/surenderthakran)

# username and password for initial mysql user on "%" host
ENV user root
ENV password root

# setting this tells that the OS is running unattended so skip any interactive dialogs
ENV DEBIAN_FRONTEND noninteractive

ADD ./build.sh /build.sh
ADD ./run.sh /run.sh

RUN chmod +x /build.sh \
  && chmod +x /run.sh \
  && sync \
  && /build.sh

VOLUME /var/lib/mysql

EXPOSE 3306

CMD ["/run.sh"]
