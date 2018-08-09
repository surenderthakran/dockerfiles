##
#       Dockerfile for Ubuntu 18.04 (Bionic Beaver) with my must have programs
##

FROM ubuntu:bionic

RUN apt-get update \
 && apt-get -y upgrade \
 && apt-get clean \
 && apt-get autoclean -y \
 && apt-get autoremove -y

CMD ["bash"]
