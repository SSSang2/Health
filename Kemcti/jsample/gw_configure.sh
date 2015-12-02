#!/bin/bash

echo "NTP setting"
sudo apt-get install ntpdate -y
sudo ntpdate -u 3.kr.pool.ntp.org
clear

echo "Permission setting"
sudo chmod 755 hubiss
sudo chmod 755 libhubiss.so
clear

echo "Export configure contents"
export GW_MODE=3
export GW_SERVER_IP=163.180.117.146
export GW_SERVER_PORT=8088
export GW_BPATH=/home/pi/Kemcti/jsample
export GW_COMP=KHUCELAB;446701
export GW_MODEL=GAS_GW_Test01
export GW_SERIAL=G0001GW
export GAS_BLUNO=d03972c4ca35
export GAS_THRES_LIMIT=300
export BEA_RSSI_LIMIT=-90
export BEA_TIME_LIMIT=10
export
sleep 2
clear

echo "Execute jar file"
sudo java -Djava.library.path=$GW_BPATH -jar GW_Final.jar
clear
