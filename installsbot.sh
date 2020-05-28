#!/bin/bash

sudo apt update
sudo apt -y install traceroute
sudo apt -y install python3-pip

pip3 install psutil
pip3 install pyTelegramBotAPI
pip3 install python-dotenv
pip3 install matplotlib

echo "Copy files"
cp -pv /opt/tontgbot/sbot.sh /etc/init.d/tontgbot
chmod -v +x /etc/init.d/tontgbot
cp -pv /opt/tontgbot/tontgbot.service /etc/systemd/system
chmod -v +x /opt/tontgbot/bot.py
echo "Done"
echo "Download speedtest-cli"
wget -O /opt/tontgbot/speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py
chmod +x /opt/tontgbot/speedtest-cli
echo "Start service and check status"
echo "service tontgbot start"
systemctl start tontgbot.service
sleep 5
echo "service tontgbot status"
systemctl status tontgbot.service