#!/bin/bash

if [ "$(id -u)" != "0" ]; then
 echo "need root"
 exit
fi

mkdir /usr/banq-ms510-ctl/ -p
cp *.txt /usr/banq-ms510-ctl/
cp projetor-* /usr/banq-ms510-ctl/
cp *.service /etc/systemd/system/

systemctl enable projetor-on.service
systemctl enable projetor-off.service

