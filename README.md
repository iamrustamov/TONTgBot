# TONTgBot Readme
This is telegram bot for Validator server. 
Tested on ubuntu 18.04 & python 3.6.8 (To check your python version, put to the terminal # python3 --version )
## Installation in 7 simple steps

 1. Create your personal telegram bot and get Api Token. [Instruction](https://docs.microsoft.com/en-us/azure/bot-service/bot-service-channel-connect-telegram?view=azure-bot-service-4.0)
 2. Run command below
```sh
$ git clone -v https://github.com/anvme/TONTgBot.git /opt/tontgbot && cd /opt/tontgbot && chmod +x installbot.sh
```
 3. Open /opt/tontgbot/bot.py in any editor and change values in TONTgBot from *Edit starts here* till *Edit ends here*. If you dont know your id, you can get it with this bot after it first start. Just send him /id command
 4. Run 
 ```sh
$ /bin/bash /opt/tontgbot/installsbot.sh
```
 5. Send to bot /start and get your id with /id. Open /opt/tontgbot/bot.py again and put id in tg
 6. Restart your bot with
  ```sh
$ systemctl restart tontgbot.service 
```
 7. Enable bot start after reboot
  ```sh
$ systemctl enable tontgbot.service 
```
