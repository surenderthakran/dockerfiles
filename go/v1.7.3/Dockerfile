FROM surenderthakran/ubuntu:xenial

ENV GO_VERSION 1.7.3
ENV PATH="/usr/local/go/bin:${PATH}"

RUN curl -SLO "https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz" \
 && tar -C /usr/local -xzf "go$GO_VERSION.linux-amd64.tar.gz" \
 && rm go1.7.3.linux-amd64.tar.gz
