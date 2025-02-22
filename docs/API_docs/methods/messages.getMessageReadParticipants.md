---
title: "messages.getMessageReadParticipants"
description: "messages.getMessageReadParticipants parameters, return type and example"
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/messages_getMessageReadParticipants.html
---
# Method: messages.getMessageReadParticipants
[Back to methods index](index.html)



### Parameters:

| Name     |    Type       | Required |
|----------|---------------|----------|
|peer|[Username, chat ID, Update, Message or InputPeer](/API_docs/types/InputPeer.html) | Optional|
|msg\_id|[int](/API_docs/types/int.html) | Yes|


### Return type: [Vector\_of\_long](/API_docs/types/long.html)

### Can bots use this method: **NO**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$Vector_of_long = $MadelineProto->messages->getMessageReadParticipants(['peer' => InputPeer, 'msg_id' => int, ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|CHAT_TOO_BIG|This method is not available for groups with more than `chat_read_mark_size_threshold` members, [see client configuration &raquo;](https://core.telegram.org/api/config#client-configuration).|


