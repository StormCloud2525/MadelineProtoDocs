---
title: "channels.getLeftChannels"
description: "Get a list of [channels/supergroups](https://core.telegram.org/api/channel) we left"
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/channels_getLeftChannels.html
---
# Method: channels.getLeftChannels
[Back to methods index](index.html)



Get a list of [channels/supergroups](https://core.telegram.org/api/channel) we left

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|offset|[int](/API_docs/types/int.html) | Offset for [pagination](https://core.telegram.org/api/offsets) | Yes|


### Return type: [messages.Chats](/API_docs/types/messages.Chats.html)

### Can bots use this method: **NO**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$messages_Chats = $MadelineProto->channels->getLeftChannels(['offset' => int, ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|403|TAKEOUT_REQUIRED|A takeout session has to be initialized, first|


