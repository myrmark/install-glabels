#!/bin/bash

cd

sudo apt install cmake -y
sudo apt install qtbase5-dev libqt5svg5-dev qttools5-dev zlib1g-dev -y
sudo apt install pkgconf libqrencode-dev -y

wget https://downloads.sourceforge.net/project/zint/zint/2.6.3/zint-2.6.3_final.tar.gz
tar xzf zint-2.6.3_final.tar.gz
cd zint-2.6.3.src/
mkdir build && cd build && cmake .. && make
sudo make install

cd

wget https://ftp.gnu.org/gnu/barcode/barcode-0.98.tar.gz
tar xzf barcode-0.98.tar.gz
cd barcode-0.98/
./configure && make
sudo make install

cd

git clone https://github.com/myrmark/glabels-qt
cd glabels-qt
mkdir build
cd build
cmake ..
make
sudo make install
