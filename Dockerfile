FROM surenderthakran/ubuntu:xenial

ENV GO_VERSION 1.7.3
ENV PATH="/usr/local/go/bin:${PATH}"
ENV GOPATH="$HOME/go_workspace"

WORKDIR /usr/local

RUN curl -SLO "https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz" \
 && tar -xzf "go$GO_VERSION.linux-amd64.tar.gz" \
 && rm go1.7.3.linux-amd64.tar.gz \
 && mkdir $HOME/go_workspace \
          $HOME/go_workspace/bin \
          $HOME/go_workspace/src \
          $HOME/go_workspace/pkg
