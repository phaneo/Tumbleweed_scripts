#!/bin/sh
sudo zypper addrepo -f https://packages.microsoft.com/yumrepos/edge microsoft-edge
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=gitlab.com_paulcarroty_vscodium_repo\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/zypp/repos.d/vscodium.repo
sudo zypper addrepo -f https://download.opensuse.org/repositories/home:/alefnode:/desktop/openSUSE_Tumbleweed/ gconf2
sudo zypper addrepo -g -r https://copr.fedorainfracloud.org/coprs/jstaf/onedriver/repo/opensuse-tumbleweed/jstaf-onedriver-opensuse-tumbleweed.repo onedriver
sudo zypper --gpg-auto-import-keys ref
sudo zypper ref 
sudo zypper in -y codium
sudo zypper in -y gconf2
sudo zypper in -y opi 
sudo zypper in -y discord
sudo zypper in -y docker-compose
sudo zypper in -y console
sudo zypper in fetchmsttfonts
sudo zypper in -y indic-fonts
sudo zypper in -y qbittorrent
sudo zypper in -y onedriver
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install spotify
flatpak install zoom
flatpak install slack
sudo zypper in microsoft-edge-stable
sudo usermod -aG docker $(whoami)
newgrp docker
sudo systemctl enable docker
sudo systemctl start --now docker
opi codecs
