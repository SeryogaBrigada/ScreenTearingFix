#!/bin/bash
sudo mkdir /etc/X11/xorg.conf.d
cat << 'EOF' | sudo tee -a /etc/X11/xorg.conf.d/20-nouveau.conf
Section "Device"
  Identifier "Nvidia"
  Driver     "nouveau"
  Option     "GLXVBlank" "true"
  Option     "DRI" "3"
EndSection
EOF
