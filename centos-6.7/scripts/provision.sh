RELEASE=`rpm -q --qf "%{VERSION}" $(rpm -q --whatprovides redhat-release)`
rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-${RELEASE}.noarch.rpm
yum install -y puppet-agent
rpm -ivh https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chefdk-0.10.0-1.el6.x86_64.rpm
yum install vim vi emacs-nox tree nano createrepo wget  yum-plugin-priorities  -y
curl -sSL https://get.docker.com/ | sh
usermod -a -G docker vagrant
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
wget -O /usr/local/repo/nginx-1.8.0-1.el6.ngx.x86_64.rpm http://nginx.org/packages/centos/6/x86_64/RPMS/nginx-1.8.0-1.el6.ngx.x86_64.rpm
wget  -O /usr/local/repo/haproxy-1.5.4-2.el6.x86_64.rpm   ftp://rpmfind.net/linux/centos/6.7/os/x86_64/Packages/haproxy-1.5.4-2.el6.x86_64.rpm 
wget -O /usr/local/repo/httpd-2.2.15-47.el6.centos.x86_64.rpm  ftp://rpmfind.net/linux/centos/6.7/updates/x86_64/Packages/httpd-2.2.15-47.el6.centos.x86_64.rpm
wget -O /usr/local/repo/httpd-tools-2.2.15-47.el6.centos.x86_64.rpm  ftp://rpmfind.net/linux/centos/6.7/updates/x86_64/Packages/httpd-tools-2.2.15-47.el6.centos.x86_64.rpm
wget -O /usr/local/repo/apr-1.3.9-5.el6_2.x86_64.rpm  http://mirror.centos.org/centos/6/os/x86_64/Packages/apr-1.3.9-5.el6_2.x86_64.rpm
wget -O  /usr/local/repo/apr-util-1.3.9-3.el6_0.1.x86_64.rpm  http://mirror.centos.org/centos/6/os/x86_64/Packages/apr-util-1.3.9-3.el6_0.1.x86_64.rpm
wget -O /usr/local/repo/apr-util-ldap-1.3.9-3.el6_0.1.x86_64.rpm  http://mirror.centos.org/centos/6/os/x86_64/Packages/apr-util-ldap-1.3.9-3.el6_0.1.x86_64.rpm
wget -O /usr/local/repo/mailcap-2.1.31-2.el6.noarch.rpm  http://mirror.centos.org/centos/6/os/i386/Packages/mailcap-2.1.31-2.el6.noarch.rpm
wget -O /usr/local/repo/numactl-2.0.9-2.el6.x86_64.rpm  http://mirror.centos.org/centos/6/os/x86_64/Packages/numactl-2.0.9-2.el6.x86_64.rpm
wget http://cdn.mysql.com//Downloads/MySQL-5.7/mysql-5.7.10-1.el6.x86_64.rpm-bundle.tar
tar -xvf  mysql-5.7.10-1.el6.x86_64.rpm-bundle.tar -C /usr/local/repo/
rm -rf  mysql-5.7.10-1.el6.i686.rpm-bundle.tar
createrepo /usr/local/repo/
cat > /etc/yum.repos.d/localrepo.repo << EOF
[localrepo]
name=localrepo
baseurl=file:///usr/local/repo/
enabled=1
priority=1
gpgcheck=0
EOF
yum clean all 
yum check-update
