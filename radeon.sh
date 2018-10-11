#!/bin/bash
sudo mkdir /etc/X11/xorg.conf.d
cat << 'EOF' | sudo tee -a /etc/X11/xorg.conf.d/20-radeon.conf
Section "Device"
  Identifier "Radeon"
  Driver     "radeon"
  Option     "TearFree" "on"
EndSection
EOF
