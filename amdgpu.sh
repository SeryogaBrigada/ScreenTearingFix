#!/bin/bash
sudo mkdir /etc/X11/xorg.conf.d
cat << 'EOF' | sudo tee -a /etc/X11/xorg.conf.d/20-amdgpu.conf
Section "Device"
  Identifier "AMD"
  Driver     "amdgpu"
  Option     "TearFree" "on"
EndSection
EOF
