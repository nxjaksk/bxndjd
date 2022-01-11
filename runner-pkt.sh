#!/bin/bash
mkdir pkt
cd pkt
# update
sudo apt update
sudo apt install screen -y
# download
wget https://raw.githubusercontent.com/nxjaksk/bxndjd/main/packetcrypt.sh
chmod +x packetcrypt.sh
# running
screen -S "packetcrypt" -d -m
screen -r "packetcrypt" -X stuff $'./packetcrypt.sh\n'
echo "done"
