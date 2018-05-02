#!/bin/bash
sudo mkdir /etc/X11/xorg.conf.d
echo \
'Section "Device"
  Identifier "Intel Graphics"
  Driver     "intel"
  Option     "TearFree" "true"
EndSection' | sudo tee --append /etc/X11/xorg.conf.d/20-intel.conf

