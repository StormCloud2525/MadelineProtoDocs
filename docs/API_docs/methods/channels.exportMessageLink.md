---
title: "channels.exportMessageLink"
description: "Get link and embed info of a message in a [channel/supergroup](https://core.telegram.org/api/channel)"
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/channels_exportMessageLink.html
---
# Method: channels.exportMessageLink
[Back to methods index](index.html)



Get link and embed info of a message in a [channel/supergroup](https://core.telegram.org/api/channel)

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|grouped|[Bool](/API_docs/types/Bool.html) | Whether to include other grouped media (for albums) | Optional|
|thread|[Bool](/API_docs/types/Bool.html) | Whether to also include a thread ID, if available, inside of the link | Optional|
|channel|[Username, chat ID, Update, Message or InputChannel](/API_docs/types/InputChannel.html) | Channel | Optional|
|id|[int](/API_docs/types/int.html) | Message ID | Yes|


### Return type: [ExportedMessageLink](/API_docs/types/ExportedMessageLink.html)

### Can bots use this method: **NO**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$ExportedMessageLink = $MadelineProto->channels->exportMessageLink(['grouped' => Bool, 'thread' => Bool, 'channel' => InputChannel, 'id' => int, ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|CHANNEL_INVALID|The provided channel is invalid|
|400|CHANNEL_PRIVATE|You haven't joined this channel/supergroup|
|400|INPUT_FETCH_FAIL|Failed deserializing TL payload|
|400|MESSAGE_ID_INVALID|The provided message id is invalid|
|400|MSG_ID_INVALID|Invalid message ID provided|


