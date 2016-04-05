#!/usr/bin/env bash

echo "***** Setting Up Host *****"

cd /

# minimal /etc/hosts file entries on mdw, smdw, sdw1 & sdw2
echo "127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4" > /etc/hosts
echo "::1             localhost localhost.localdomain localhost6 localhost6.localdomain6" >> /etc/hosts

# create the /data directory on mdw, smdw, sdw1 & sdw2
mkdir data

# set vim as default editor and create alias
echo "" >> /root/.bashrc
echo "export EDITOR=vim" >> /root/.bashrc
echo "" >> /root/.bashrc
echo "alias vi=vim" >> /root/.bashrc
echo "" >> /root/.bashrc

# create aliases on mdw, smdw, sdw1 & sdw2 to make it easier to ssh to & from any host in the cluster
echo "alias mdw='ssh root@172.16.1.11'" >> /root/.bashrc
echo "alias smdw='ssh root@172.16.1.14'" >> /root/.bashrc
echo "alias sdw1='ssh root@172.16.1.12'" >> /root/.bashrc
echo "alias sdw2='ssh root@172.16.1.13'" >> /root/.bashrc