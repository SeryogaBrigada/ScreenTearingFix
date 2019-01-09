#!/bin/bash
sudo mkdir /etc/X11/xorg.conf.d
cat << 'EOF' | sudo tee -a /etc/X11/xorg.conf.d/20-nouveau.conf
Section "Device"
  Identifier "nvidia"
  Driver     "nouveau"
  Option     "GLXVBlank" "true"
EndSection
EOF
