FROM golang:1.12-alpine3.9 AS build

ARG PROTOTOOL_VERSION=1.9.0
ARG PROTOC_GEN_JAVA_GRPC_VERSION=1.24.1
ARG GOLANG_PROTOBUF_VERSION=1.3.2
ARG GOGO_PROTOBUF_VERSION=1.3.1

RUN apk --no-cache add --update curl git libc6-compat make upx

RUN GO111MODULE=on go get \
  github.com/uber/prototool/cmd/prototool@v${PROTOTOOL_VERSION} && \
  mv /go/bin/prototool /usr/local/bin

