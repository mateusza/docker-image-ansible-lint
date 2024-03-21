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
    unzip \
    vim \
    ;

RUN apk add --no-cache \
    python3 \
    py3-pip \
    ;

RUN python3 -m pip config set global.break-system-packages true

RUN python3 -m pip install ansible ansible-lint

WORKDIR /

CMD ["/entrypoint.sh"]

