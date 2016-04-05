#!/usr/bin/env bash

echo "***** Installing Applications on Host *****"

# software packages to be installed on mdw, smdw, sdw1 & sdw2
# install expect
yum install expect -y

# install ntp
yum install ntp -y

# install ed
yum install ed -y

#install vim
yum install vim -y