##
#       Dockerfile for Ubuntu 14.04 (Trusty Tahr) with my must have programs
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
 && apt-get clean \
 && apt-get autoclean -y \
 && apt-get autoremove -y

CMD ["bash"]
