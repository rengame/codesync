FROM alpine:latest

ENV RSYNC_USER=gwt RSYNC_PASSWORD=gwt2012 RSYNC_SERVER=192.168.21.27 RSYNC_MODULE=repo RSYNC_TARGET=/data/repo

ADD auto.sh /bin/

ENTRYPOINT ["sh", "/bin/auto.sh"]
