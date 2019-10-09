FROM alpine:latest

ENV RSYNC_USER= RSYNC_PASSWORD= RSYNC_SERVER= RSYNC_MODULE= RSYNC_TARGET=

RUN apk add rsync

ADD auto.sh /bin/

ENTRYPOINT ["sh", "/bin/auto.sh"]
