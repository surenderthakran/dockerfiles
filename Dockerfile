FROM surenderthakran/ubuntu:xenial

ENV GO_VERSION 1.7.3

WORKDIR /usr/local

RUN curl -SLO "https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz" \
 && tar -xzf "go$GO_VERSION.linux-amd64.tar.gz" \
 && export PATH=$PATH:/usr/local/go/bin \
 && mkdir $HOME/go_workspace \
          $HOME/go_workspace/bin \
          $HOME/go_workspace/src \
          $HOME/go_workspace/pkg \
 && export GOPATH=$HOME/go_workspace
