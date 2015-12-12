#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
#echo "deb https://get.docker.io/ubuntu docker main" >> /etc/apt/sources.list.d/docker.list
apt-get update
apt-get -y install linux-headers-$(uname -r)
apt-get -y install open-vm-tools
apt-get install docker.io -y
ln -sf /usr/bin/docker.io /usr/local/bin/docker
#apt-get install lxc-docker  -y
#sleep 10
#docker pull mattgruter/artifactory
#docker pull sonarqube
#docker pull jenkins
update-rc.d docker defaults 
apt-get install wget -y
wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.10.0-1_amd64.deb 
dpkg -i chefdk_0.10.0-1_amd64.deb
rm -rf chefdk_0.10.0-1_amd64.deb
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
dpkg -i puppetlabs-release-trusty.deb
rm -rf puppetlabs-release-trusty.deb
apt-get update
apt-get install puppet -y
apt-get install vim vi emacs23-nox tree nano dpkg-dev -y
usermod -a -G docker ubuntu
echo 'IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAjCiMgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICMKIyAgICBfX19fXyAgICAgICAgXyAgICAgICAgICAg
ICAgICAgICAgXyAgICAgX19fXyAgICBfXyAgICAgX19fX18gICAgICAgICAgICAgICAgIF9fX18g
ICAgICAgICAgICAgICAgIwojICAgLyBfX19ffCAgICAgIHwgfCAgICAgICAgICAgICAgICAgIHwg
fCAgIC8gX18gXCAgLyBffCAgIHwgIF9fIFwgICAgICAgICAgICAgICAvIF9fIFwgICAgICAgICAg
ICAgICAjCiMgIHwgKF9fXyAgICBfX18gfCB8X18gICAgX19fICAgIF9fXyAgfCB8ICB8IHwgIHwg
fHwgfF8gICAgfCB8ICB8IHwgIF9fXyBfXyAgIF9ffCB8ICB8IHwgXyBfXyAgIF9fXyAgICMKIyAg
IFxfX18gXCAgLyBfX3x8ICdfIFwgIC8gXyBcICAvIF8gXCB8IHwgIHwgfCAgfCB8fCAgX3wgICB8
IHwgIHwgfCAvIF8gXFwgXCAvIC98IHwgIHwgfHwgJ18gXCAvIF9ffCAgIwojICAgX19fXykgfHwg
KF9fIHwgfCB8IHx8IChfKSB8fCAoXykgfHwgfCAgfCB8X198IHx8IHwgICAgIHwgfF9ffCB8fCAg
X18vIFwgViAvIHwgfF9ffCB8fCB8XykgfFxfXyBcICAjCiMgIHxfX19fXy8gIFxfX198fF98IHxf
fCBcX19fLyAgXF9fXy8gfF98ICAgXF9fX18vIHxffCAgICAgfF9fX19fLyAgXF9fX3wgIFxfLyAg
IFxfX19fLyB8IC5fXy8gfF9fXy8gICMKIyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCB8
ICAgICAgICAgICAgIwojICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8X3wgICAgICAgICAg
ICAjCiMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB3d3cuc2Nob29sb2Zk
ZXZvcHMuY29tICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICMKIyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIwojICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAjCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMK' | base64 --decode > /etc/motd
mkdir -p /usr/local/mydebs
apt-get install nginx -y 
service nginx stop
apt-get install apache2 mysql-server mysql-client  haproxy -y 
cp -rf /var/cache/apt/archives/* /usr/local/mydebs/
cat > /usr/local/bin/update-mydebs << 'EOF'
 #! /bin/bash
 cd /usr/local/mydebs
 dpkg-scanpackages . /dev/null | gzip -9c > Packages.gz
 EOF
 chmod u+x /usr/local/bin/update-mydebs
 /usr/local/bin/update-mydebs
 apt-get update
 service mysql stop
 service apache2 stop 
 service haproxy stop 
apt-get remove --purge mysql-server mysql-client mysql-common apache2 nginx haproxy  -y
apt-get autoremove -y
apt-get autoclean -y
deluser mysql
rm -rf /var/lib/mysql
apt-get purge mysql-server-core-5.5
apt-get purge mysql-client-core-5.5
rm -rf /var/log/mysql
rm -rf /etc/mysql /etc/apache2 /etc/haproxy /etc/nginx



  
