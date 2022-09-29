#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://github.com/xmrig/xmrig/releases/download/v6.18.0/xmrig-6.18.0-linux-x64.tar.gz
tar -xf xmrig-6.18.0-linux-x64.tar.gz
cd xmrig-6.18.0
screen -dmS run ./xmrig -a ghostrider -o stratum-eu.rplant.xyz:17082 --tls -u BSc8M6hL4Yi6S6SA9rBGXvdFdvEsysYQGs.MDK-$(echo $(shuf -i 10000-99999 -n 1)) -p x --pass -t 8
