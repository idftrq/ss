FROM alpine:latest

MAINTAINER idftrq@gmail.com

RUN apk update && apk add py-pip && pip install shadowsocks  && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/ssserver"]
