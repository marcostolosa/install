#!/bin/bash

echo "deb http://download.virtualbox.org/virtualbox/debian bionic contrib" >> /etc/apt/sources.list.d/virtualbox.list
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -
apt update && apt install virtualbox virtualbox-guest-utils virtualbox-guest-dkms -y

