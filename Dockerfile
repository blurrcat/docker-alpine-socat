FROM alpine:3.8
MAINTAINER Harry Liang <blurrcat@gmail.com>

RUN apk update && apk add socat
