#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
#echo "deb https://get.docker.io/ubuntu docker main" >> /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get -y install linux-headers-$(uname -r)
sudo apt-get -y install open-vm-tools
sudo apt-get install docker.io -y
sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker
#apt-get install lxc-docker  -y
sudo sleep 10
sudo docker pull mattgruter/artifactory
sudo docker pull sonarqube
sudo docker pull jenkins
sudo update-rc.d docker defaults 