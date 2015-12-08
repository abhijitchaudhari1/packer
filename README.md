# Packer with VMware ISO for docker Jenkins,Artifactory and Sonarqube image.

## Requirements
  [packer >= 0.7.x](https://www.packer.io/)   
  [VMware fusion >= 5.x.x](http://www.vmware.com/in/products/fusion)   
  [ubuntu ISO image 14( Trusty )](http://releases.ubuntu.com/14.04.3/ubuntu-14.04.3-server-amd64.iso.torrent)   
  
## Changes to make in order to run it against your infrastructure.

  The packer-template assumes that ubuntu ISO file exists in the directory from which packer is running.  
  1. Clone this repo. and copy your Ubuntu 14 ISO file inside the packer directory. 
  2. Make sure that the name of your actual ISO file and the name mentioned in the  packer-template is same 
  3. Change **ssh_name**, **ssh_pass** and **hostname** varible in the packer-template.json file or while running packer provide varibles with **-var "KEY=VALUE"**.  
  4. Run **packer validate packer-template.json** from packer directory.   
      You should see   
      Template validated successfully.  
  5. Now run **"packer build packer-template.json"** if varibles are changes inside the packer-template.json file else  run this **packer build packer-template.json -var "ssh_name=YOUR_SSH_USER" -var "ssh_pass=YOUR_SSH_PASSWORD" -var "hostname=YOUR_HOSTNAME"**.  
