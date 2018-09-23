Telegram bot with Docker hosted on zeit (https://zeit.co) 

## Pre-deploy (один раз)

Сохранить Telegram bot token в secret

    now secret add telegram_bot_token xxxxx

## Deploy

    ./deploy.sh

#### Логи

    now logs -f telegram-bot-andrey.now.sh

#### Удалить старые версии

```bash
# удалить совсем всё
now rm -y now-test

# удалить то что без алиасов (не-боевые деплойменты)
now rm now-test --safe --yes
```
