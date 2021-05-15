# https://hub.docker.com/_/alpine
FROM alpine:latest

RUN apk update && \
  apk add --no-cache nano mc micro rsync ncdu