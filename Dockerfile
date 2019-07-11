FROM docker:stable

MAINTAINER Roy Evangelista <royevangelista@gmail.com>

RUN apk add --no-cache \
    py-pip \
    bash \
    gcc \
    python2-dev \
    build-base \
    libffi-dev \
    openssl-dev

RUN pip install --no-cache-dir docker-compose

CMD ["docker-compose", "-v"]
