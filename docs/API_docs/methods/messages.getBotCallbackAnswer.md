---
title: "messages.getBotCallbackAnswer"
description: "Press an inline callback button and get a callback answer from the bot"
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/messages_getBotCallbackAnswer.html
---
# Method: messages.getBotCallbackAnswer
[Back to methods index](index.html)



Press an inline callback button and get a callback answer from the bot

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|game|[Bool](/API_docs/types/Bool.html) | Whether this is a "play game" button | Optional|
|peer|[Username, chat ID, Update, Message or InputPeer](/API_docs/types/InputPeer.html) | Where was the inline keyboard sent | Optional|
|msg\_id|[int](/API_docs/types/int.html) | ID of the Message with the inline keyboard | Yes|
|data|[bytes](/API_docs/types/bytes.html) | Callback data | Optional|
|password|[InputCheckPasswordSRP](/API_docs/types/InputCheckPasswordSRP.html) | For buttons [requiring you to verify your identity with your 2FA password](../constructors/keyboardButtonCallback.html), the SRP payload generated using [SRP](https://core.telegram.org/api/srp). | Optional|


### Return type: [messages.BotCallbackAnswer](/API_docs/types/messages.BotCallbackAnswer.html)

### Can bots use this method: **NO**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$messages_BotCallbackAnswer = $MadelineProto->messages->getBotCallbackAnswer(['game' => Bool, 'peer' => InputPeer, 'msg_id' => int, 'data' => 'bytes', 'password' => InputCheckPasswordSRP, ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|BOT_RESPONSE_TIMEOUT|A timeout occurred while fetching data from the bot|
|400|CHANNEL_INVALID|The provided channel is invalid|
|400|CHANNEL_PRIVATE|You haven't joined this channel/supergroup|
|400|DATA_INVALID|Encrypted data invalid|
|400|INPUT_FETCH_FAIL|Failed deserializing TL payload|
|400|MESSAGE_ID_INVALID|The provided message id is invalid|
|400|PEER_ID_INVALID|The provided peer id is invalid|
|-3002|All workers are busy. Active_queries = X|All workers are busy. Active_queries = X|
|406|AUTH_KEY_DUPLICATED|An auth key with the same ID was already generated|
|-503|Timeout|Timeout while fetching data|


