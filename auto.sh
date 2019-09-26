#!/bin/sh
RSYNC_USER=gwt
RSYNC_PASSWORD=gwt2012
RSYNC_SERVER=192.168.21.27
RSYNC_MODULE=repo
RSYNC_TARGET=/data/repo

apk add rsync
pwd

echo "$RSYNC_PASSWORD" > rsync.password
chmod 0600 rsync.password
while [ true ]; do
	echo "rsync -avzP  --delete  --password-file=rsync.password  $RSYNC_USER@$RSYNC_SERVER::$RSYNC_MODULE $RSYNC_TARGET"
	rsync -avzP  --delete  --password-file=rsync.password  $RSYNC_USER@$RSYNC_SERVER::$RSYNC_MODULE $RSYNC_TARGET
	/bin/sleep 10
	/bin/date
done
