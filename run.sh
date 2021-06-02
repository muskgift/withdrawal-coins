#!/usr/bin/env bash

sudo git clone https://github.com/smartholdem/smartholdem-rpc
cd smartholdem-rpc
npm install
forever start server.js

sudo apt install python3-pip
cd withdrawal-coins
pip3 install -r requirements.txt
sudo python3 withdrawal_coins.py
forever stop server.js
