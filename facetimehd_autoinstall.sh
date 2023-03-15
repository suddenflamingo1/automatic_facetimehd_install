#!/bin/bash

sudo apt-get install make
sudo apt-get install git
sudo apt-get install curl xzcat cpio
git clone https://github.com/patjak/facetimehd-firmware.git
cd facetimehd-firmware
make
sudo make install
cd ..
sudo apt-get install kmod libssl-dev checkinstall
git clone https://github.com/patjak/bcwc_pcie.git
cd bcwc_pcie
make
sudo make install
sudo depmod
sudo modprobe -r bdc_pci
sudo modprobe facetimehd
sudo echo
sudo echo Now you need to copy and paste this command: "sudo echo facetimehd /etc/modules"
sudo echo
sudo echo If the text doesnt say 
sudo echo
sudo echo "Found matching hash from OS X, El Capitan 10.11.5"
sudo echo
sudo echo or something related, then you may need to install the latest version of macOS your Mac can run, it doesnt need to be El Capitan, just the latest version of macOS it can handle/run
sudo echo
sudo echo If the camera installs successfully beginning from the following text 
sudo echo
sudo echo "Found from OS X El Capitan!" 
sudo echo
sudo echo You now need to run this following command
sudo echo 
sudo echo "sudo reboot"
sudo echo
sudo echo Do a copy and paste using ctrl/control + shift + c/v
sudo echo
sudo echo Note: it does not matter what version, it will just say OS X El Capitan anyway, so it really does not matter if you install macOS Monterey on a 64GB partition, it will still say that, but that is considered normal
