#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y

#install bluez(beacon module)
sleep 1
sudo apt-get install libusb-dev libdbus-1-dev libglib2.0-dev libudev-dev libical-dev libreadline-dev -y
sudo mkdir bluez
cd bluez
sudo unxz bluez-5.11.tar.xz
sudo tar xvf bluez-5.11.tar
cd bluez-5.11
sudo ./configure --disable-systemd
sudo make
sudo make install 
tools/hciconfig
sleep 1
clear

#install noble
sleep 1
cd ~/Health
sudo apt-get install bluetooth bluez-utils libbluetooth-dev libudev-dev -y
sudo ln -s /usr/bin/nodejs /usr/bin/node
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
npm install noble
sleep 1
clear

#install wiring Pi for gpio pin
sleep 1
git clone git://git.drogon.net/wiringPi
cd wiringPi
sudo ./build
cd ~/Health
sleep 1

#install rabbitMq
sudo chmod 777 /etc/apt/sources.list
sudo echo "deb http://packages.erlang-solutions.com/debian wheezy contrib" >> /etc/apt/sources.list
cd ~/
wget http://packages.erlang-solutions.com/debian/erlang_solutions.asc
sudo apt-key add erlang_solutions.asc
sudo apt-get update
sudo apt-get install erlang-mini
sudo apt-get install erlang-os-mon
sudo apt-get install erlang-xmerl
erl
wget http://www.rabbitmq.com/releases/rabbitmq-server/v3.2.2/rabbitmq-server-generic-unix-3.2.2.tar.gz
cd /opt
sudo tar zxvf ~/rabbitmq-server-generic-unix-3.2.2.tar.gz

#Permission for shell script file
sudo chmod 755 ibeacon_scan
sudo chmod 755 sensor

