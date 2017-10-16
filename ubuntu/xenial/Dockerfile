##
#       Dockerfile for Ubuntu 16.04 (Xenial Xerus) with my must have programs
##

FROM ubuntu:xenial

RUN apt-get update \
 && apt-get -y upgrade \
 && apt-get install -y \
      byobu \
      git \
      vim \
      wget \
      curl \
      build-essential \
      python2.7 \
 && ln -s /usr/bin/python2.7 /usr/bin/python \
 && apt-get clean \
 && apt-get autoclean -y \
 && apt-get autoremove -y

CMD ["bash"]
