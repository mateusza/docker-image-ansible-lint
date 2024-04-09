FROM alpine:latest

RUN apk update

RUN apk add --no-cache \
    bash \
    curl \
    file \
    git \
    iproute2 \
    mc \
    openssh-client \
    shellcheck \
    unzip \
    vim \
    ;

RUN apk add --no-cache \
    nodejs \
    python3 \
    py3-pip \
    && rm -rf /var/cache/apk/*

RUN python3 -m pip config set global.break-system-packages true

RUN python3 -m pip install \
    ansible \
    ansible-lint \
    ;

WORKDIR /

