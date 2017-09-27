FROM alpine:latest

MAINTAINER idftrq@gmail.com

RUN apk update && apk add py-pip
RUN pip install shadowsocks 

ENTRYPOINT ["/usr/bin/ssserver"]
