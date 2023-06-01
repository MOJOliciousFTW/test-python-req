#!/bin/bash
mkdir tmp_zivid_deb_install
cd Zivid
wget \
https://downloads.zivid.com/sdk/releases/2.9.0+4dbba385-1/u22/zivid-telicam-driver_3.0.1.1-3_amd64.deb \
https://downloads.zivid.com/sdk/releases/2.9.0+4dbba385-1/u22/zivid_2.9.0+4dbba385-1_amd64.deb
sudo apt install ./*.deb
cd ..
rm -rf tmp_zivid_deb_install
