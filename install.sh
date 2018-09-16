#!/bin/bash

if [ "$(id -u)" != "0" ]; then
 echo "need root"
 exit
fi

mkdir /usr/Proinfo-clt/ -p
cp *.txt /usr/Proinfo-clt/
cp projetor-* /usr/Proinfo-clt/
cp *.service /etc/systemd/system/

systemctl enable projetor-on.service
systemctl enable projetor-off.service
systemctl start projetor-off.service

