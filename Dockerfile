FROM alpine:3.8

RUN apk add --update \
    python \
    nodejs \
    npm \
    zlib-dev \
    make \
    g++ \
  && npm install https://cdn.stringify.com/developer/stringify-developer-1.0.11.tgz -g --unsafe-perm \
  && rm -rf /var/cache/apk/*

EXPOSE 1337

CMD ["stringify"]
