# TONTgBot Readme
This is telegram bot for Validator server. 
Tested on ubuntu 18.04 & python 3.6.8 (To check your python version, put to the terminal # python3 --version )
## Installation in 7 simple steps

 1. Create your personal telegram bot and get Api Token. [Instruction](https://docs.microsoft.com/en-us/azure/bot-service/bot-service-channel-connect-telegram?view=azure-bot-service-4.0)
 2. Run command below
```sh
$ git clone -v https://github.com/anvme/TONTgBot.git /opt/tontgbot && cd /opt/tontgbot && chmod +x installsbot.sh
```
 3. Open /opt/tontgbot/bot.py in any editor and change values in TONTgBot from *Edit starts here* till *Edit ends here*. If you dont know your id(tg value) insert there 1 and go to next step. You can get it with this bot after it first start from step 4. Just send him /id command
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
## Available languages *Yes, with google translate
Change languages=['en'] in bot.py to language, what you need
  ```sh
lang_translations = gettext.translation('base', localedir='/opt/tontgbot/locales', languages=['en'])
```

Language - code
* English - en
* Español - es
* Français - fr
* Dansk - da
* Nederlands - nl
* हिंदी - hi
* Italiano - it
* Polski - pl
* Português - pt
* Suomi - fi
* Svenska - sv
* Türkçe - tr
* Ελληνικά - el
* Русский - ru
* Українська - uk
* 日本語 - ja

And restart your bot
  ```sh
$ systemctl restart tontgbot.service 
```

## Restart validator node
If you will restart validator node from bot, tontgbot service will be it's parrent, and if you stop tontgbot, you will need to run node again from terminal. I will think about deattaching run node pid from tontgbot service after restart

## What to do if something not working?
Find in bot.py telebot.logger.setLevel(logging.ERROR) and change ERROR to DEBUG, restart tontgbot service and execute
  ```sh
$ journalctl -e -u tontgbot > /opt/tontgbot/servicelog.log
```
Then sent it log to my telegram @anvme
