#!/bin/bash

curl -L https://github.com/OpenNebula/addon-context-linux/releases/download/v5.10.0/one-context-5.10.0-1.el7.noarch.rpm

yum install -y epel-release
yum install -y one-context-[0-9]*el7*rpm

rm -f one-context-5.10.0-1.el7.noarch.rpm

yum install -y unzip

wget https://dl.xonotic.org/xonotic-0.8.2.zip

unzip xonotic-0.8.2.zip

rm -f xonotic-0.8.2.zip

cp Xonotic/server/server_linux.sh Xonotic/

mkdir /root/.xonotic

mkdir /root/.xonotic/data

cp Xonotic/server/server.cfg /root/.xonotic/data/

mv Xonotic /root/

chmod 664 /etc/systemd/system/xonotic.service

systemctl daemon-reload

systemctl enable xonotic.service

yum clean all
