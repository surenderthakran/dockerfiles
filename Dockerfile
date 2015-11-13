##
#       Dockerfile for Ubuntu 14.04 (Trusty Tahr) with my must have programs
#		libkrb5-dev - kerberos peer dependency for npm mongodb
##

FROM ubuntu:trusty

RUN apt-get update \
 && apt-get -y upgrade \
 && apt-get install -y \
      byobu \
      git \
      vim \
      wget \
      curl \
      build-essential \
      libkrb5-dev \
      python2.7 \
 && ln -s /usr/bin/python2.7 /usr/bin/python \
 && apt-get clean \
 && apt-get autoclean -y \
 && apt-get autoremove -y

CMD ["bash"]
