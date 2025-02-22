---
title: "stats.getBroadcastStats"
description: "Get [channel statistics](https://core.telegram.org/api/stats)"
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/stats_getBroadcastStats.html
---
# Method: stats.getBroadcastStats
[Back to methods index](index.html)



Get [channel statistics](https://core.telegram.org/api/stats)

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|dark|[Bool](/API_docs/types/Bool.html) | Whether to enable dark theme for graph colors | Optional|
|channel|[Username, chat ID, Update, Message or InputChannel](/API_docs/types/InputChannel.html) | The channel | Optional|


### Return type: [stats.BroadcastStats](/API_docs/types/stats.BroadcastStats.html)

### Can bots use this method: **NO**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$stats_BroadcastStats = $MadelineProto->stats->getBroadcastStats(['dark' => Bool, 'channel' => InputChannel, ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|BROADCAST_REQUIRED|This method can only be called on a channel, please use stats.getMegagroupStats for supergroups|
|400|CHANNEL_INVALID|The provided channel is invalid|
|400|CHANNEL_PRIVATE|You haven't joined this channel/supergroup|
|400|CHAT_ADMIN_REQUIRED|You must be an admin in this chat to do this|
|-503|Timeout|Timeout while fetching data|


