#!/bin/bash
sudo mkdir /etc/X11/xorg.conf.d
cat << 'EOF' | sudo tee -a /etc/X11/xorg.conf.d/20-nvidia.conf
Section "Device"
  Identifier "Nvidia"
  Driver     "nvidia"
  Option     "ForceCompositionPipeline" "yes"
EndSection
EOF
