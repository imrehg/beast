#!/bin/bash

echo "rendering image"
if [ ${REMOTEIMG} ]; then
  echo "Remote image from ${REMOTEIMG}"
  FILENAME="${REMOTEIMG##*/}"
  wget "$REMOTEIMG" -O "${FILENAME}"
  fbi -d /dev/fb1 -T 1 -noverbose -a "${FILENAME}"
else
  fbi -d /dev/fb1 -T 1 -noverbose -a images/taipei_hackerspace.png
fi

sleep 9999999
