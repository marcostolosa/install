#!/bin/bash

wget -O discord-canary.deb "https://discordapp.com/api/download/canary?platform=linux"

wget http://li.nux.ro/download/nux/dextop/el7/x86_64//alien-8.90-3.el7.nux.noarch.rpm
yum install ./alien-8.90-3.el7.nux.noarch.rpm

alien -r -c ./discord-canary.deb
rpmrebuild -pe discord-canary.rpm

