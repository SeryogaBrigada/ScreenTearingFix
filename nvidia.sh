#!/bin/bash
sudo mkdir /etc/X11/xorg.conf.d
echo \
'Section "Device"
  Identifier "Nvidia"
  Driver     "nvidia"
  Option     "ForceCompositionPipeline" "yes"
EndSection' | sudo tee --append /etc/X11/xorg.conf.d/20-nvidia.conf

