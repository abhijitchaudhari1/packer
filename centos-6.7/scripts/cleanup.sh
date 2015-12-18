yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
rm -rf VBoxGuestAdditions.iso
rm -rf /tmp/rubygems-*
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY	
yum makecache
