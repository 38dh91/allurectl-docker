ARG ALPINE_VER="3.24.1"

FROM alpine:${ALPINE_VER}
ARG ALLURECTL_VER="2.20.0"

RUN apk update && \
  apk add --no-cache bash curl && \
  curl -skL https://github.com/allure-framework/allurectl/releases/download/${ALLURECTL_VER}/allurectl_linux_amd64 -o /usr/bin/allurectl && \
  chmod +x /usr/bin/allurectl

