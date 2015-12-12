#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
yum check-update
yum update
#curl -sSL https://get.docker.com/ | sh
#service docker start
#chkconfig docker on 
yum install wget -y
wget https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chefdk-0.10.0-1.el6.x86_64.rpm
rpm -ivh chefdk-0.10.0-1.el6.x86_64.rpm
rm -rf chefdk-0.10.0-1.el6.x86_64.rpm
wget http://yum.puppetlabs.com/el/6/products/i386/puppetlabs-release-6-7.noarch.rpm
rpm -ivh puppetlabs-release-6-7.noarch.rpm
yum install puppet-server puppetx
service puppet start
service chef-client start
chkconfig  puppet on
chkconfig chef-client on
yum install vim vi emacs23-nox tree nano createrepo -y
usermod -a -G docker centos
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
mkdir -p /usr/local/repo/
wget -O /usr/local/repo/nginx-1.7.9-1.el6.ngx.i386.rpm http://nginx.org/packages/old/rhel/6/i386/nginx-1.7.9-1.el6.ngx.i386.rpm
wget  -O /usr/local/repo/haproxy-1.5.4-2.el6.i686.rpm  ftp://195.220.108.108/linux/centos/6.7/os/i386/Packages/haproxy-1.5.4-2.el6.i686.rpm 
wget -O /usr/local/repo/httpd-2.2.15-45.el6.centos.i686.rpm  ftp://fr2.rpmfind.net/linux/centos/6.7/os/i386/Packages/httpd-2.2.15-45.el6.centos.i686.rpm
wget -O /usr/local/repo/httpd-tools-2.2.15-45.el6.centos.i686.rpm  ftp://fr2.rpmfind.net/linux/centos/6.7/os/i386/Packages/httpd-tools-2.2.15-45.el6.centos.i686.rpm
wget -O /usr/local/repo/apr-1.3.9-5.el6_2.i686.rpm  http://mirror.centos.org/centos/6/os/i386/Packages/apr-1.3.9-5.el6_2.i686.rpm
wget -O  /usr/local/repo/apr-util-1.3.9-3.el6_0.1.i686.rpm  http://mirror.centos.org/centos/6/os/i386/Packages/apr-util-1.3.9-3.el6_0.1.i686.rpm
wget -O /usr/local/repo/apr-util-ldap-1.3.9-3.el6_0.1.i686.rpm  http://mirror.centos.org/centos/6/os/i386/Packages/apr-util-ldap-1.3.9-3.el6_0.1.i686.rpm
wget -O /usr/local/repo/mailcap-2.1.31-2.el6.noarch.rpm  ftp://ftp.muug.mb.ca/mirror/centos/6.7/os/x86_64/Packages/mailcap-2.1.31-2.el6.noarch.rpm
wget -O /usr/local/repo/libaio-0.3.107-10.el6.i686.rpm  ftp://195.220.108.108/linux/centos/6.7/os/i386/Packages/libaio-0.3.107-10.el6.i686.rpm
wget -O /usr/local/repo/numactl-2.0.9-2.el6.i686.rpm  ftp://195.220.108.108/linux/centos/6.7/os/i386/Packages/numactl-2.0.9-2.el6.i686.rpm
wget http://cdn.mysql.com//Downloads/MySQL-5.7/mysql-5.7.10-1.el6.i686.rpm-bundle.tar
tar -xvf  mysql-5.7.10-1.el6.i686.rpm-bundle.tar -C /usr/local/repo/
rm -rf  mysql-5.7.10-1.el6.i686.rpm-bundle.tar
wget http://pkgs.repoforge.org/perl-DBI/perl-DBI-1.616-1.el6.rfx.i686.rpm -O /usr/local/repo/perl-DBI-1.616-1.el6.rfx.i686.rpm
createrepo /usr/local/repo/
cat > /etc/yum.repos.d/localrepo.repo << EOF
[localrepo]
name=localrepo
baseurl=file:///usr/local/repo/
enabled=1
gpgcheck=0
EOF




  
