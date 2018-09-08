Telegram bot with Docker hosted on zeit (https://zeit.co) 

```
now rm -y now-test
now --public -e TELEGRAM_BOT_TOKEN=...
now alias https://now-test-ohbvcbnjer.now.sh denisov
now logs -f denisov.now.sh
```

- как делать только 1 деплой и 1 инстанс (или как его). Чтобы был только 1 экземпляр всегда?
- как задавать алиас при деплое?