# Setup

## Requirements

- [Docker](https://www.docker.com/)
- [Docker compose](https://docs.docker.com/compose/)

### Get Telegram API ID, API HASH

!!! note

    In order to dev with restart bot on changes, no using Telegram's bot server which may lead to temporarily ban.

1. Go to <https://my.telegram.org/>
2. Login
3. Create app
4. Add `TELEGRAM_API_ID="${App api_id}"`, `TELEGRAM_API_HASH="${App api_hash}"` to `.env`

### Get Bot token

1. Chat with [@BotFather](https://t.me/BotFather)
2. Create bot
3. Add `BOT_TOKEN=${bot token}` to `.env`

### Get Chat IDs

!!! note

    To let the bot know which chat IDs should it serve

1. Get the message from the chat, forward to [@RoseClone_bot](https://t.me/MissRose_bot)
2. Reply the message with `/id`
3. Gather all chat IDs you want, separate them with space and add `AUTHORIZED_CHATS=${id1 id2}` to `.env`

### Get Owner IDs

!!! note

    The owner which will have right manage the bot

1. Forward message from a user to [@userinfobot](https://t.me/userinfobot)
2. Add `OWNERS=${id1 id2}` to `.env`

---

!!! sample "Sample `.env`"

```sh
OWNERS="1239087604 9012387409"
BOT_TOKEN="6082903432:Ap9102834rlkjch2NKmQ2Ja7Zx_Sc3Drx_d"
AUTHORIZED_CHATS="-1001790080439 -10239892847"

TELEGRAM_API_ID="89213745"
TELEGRAM_API_HASH="4d0p92134kjhef886fe205092340d15b"
```
