#!/bin/bash
sudo mkdir /etc/X11/xorg.conf.d
cat << 'EOF' | sudo tee -a /etc/X11/xorg.conf.d/20-intel.conf
Section "Device"
  Identifier "Intel Graphics"
  Driver     "intel"
  Option     "TearFree" "true"
EndSection
EOF
