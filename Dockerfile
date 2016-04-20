FROM alpine:edge
MAINTAINER ckeyer <me@ckeyer.com>

RUN apk add --update rocksdb --update-cache --repository http://dl-4.alpinelinux.org/alpine/edge/testing && \
	apk add --update snappy && \ 
	apk add --update libbz2 && \
	apk add --update zlib && \
	apk add --update git && \
	apk add --update wget && \
	apk add --update vim && \
	apk add --update bash && \
	apk add --update gcc && \
	apk add --update go

ENV GOPATH=/go
ENV PATH=$PATH:$GOPATH/bin

WORKDIR $GOPATH