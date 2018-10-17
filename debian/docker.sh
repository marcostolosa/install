#!/bin/bash

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo 'deb https://download.docker.com/linux/debian stretch stable' > /etc/apt/sources.list.d/docker.list
apt update
apt remove docker docker-engine docker.io
apt install docker-ce -y
updatedb
docker version

