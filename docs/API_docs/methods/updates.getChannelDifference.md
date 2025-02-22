---
title: "updates.getChannelDifference"
description: "You cannot use this method directly, see https://docs.madelineproto.xyz for more info on handling updates"
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/updates_getChannelDifference.html
---
# Method: updates.getChannelDifference
[Back to methods index](index.html)



You cannot use this method directly, see https://docs.madelineproto.xyz for more info on handling updates

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|force|[Bool](/API_docs/types/Bool.html) | Set to true to skip some possibly unneeded updates and reduce server-side load | Optional|
|channel|[Username, chat ID, Update, Message or InputChannel](/API_docs/types/InputChannel.html) | The channel | Optional|
|filter|[ChannelMessagesFilter](/API_docs/types/ChannelMessagesFilter.html) | Messsage filter | Optional|
|pts|[int](/API_docs/types/int.html) | Persistent timestamp (see [updates](https://core.telegram.org/api/updates)) | Yes|
|limit|[int](/API_docs/types/int.html) | How many updates to fetch, max `100000`<br>Ordinary (non-bot) users are supposed to pass `10-100` | Yes|


### Return type: [updates.ChannelDifference](/API_docs/types/updates.ChannelDifference.html)

### Can bots use this method: **YES**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$updates_ChannelDifference = $MadelineProto->updates->getChannelDifference(['force' => Bool, 'channel' => InputChannel, 'filter' => ChannelMessagesFilter, 'pts' => int, 'limit' => int, ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|CHANNEL_INVALID|The provided channel is invalid|
|400|CHANNEL_PRIVATE|You haven't joined this channel/supergroup|
|400|CONNECTION_DEVICE_MODEL_EMPTY|Device model empty|
|400|CONNECTION_SYSTEM_LANG_CODE_EMPTY|The system_lang_code field is empty|
|400|FROM_MESSAGE_BOT_DISABLED|Bots can't use fromMessage min constructors|
|400|INPUT_FETCH_FAIL|Failed deserializing TL payload|
|400|MSG_ID_INVALID|Invalid message ID provided|
|400|PERSISTENT_TIMESTAMP_EMPTY|Persistent timestamp empty|
|400|PERSISTENT_TIMESTAMP_INVALID|Persistent timestamp invalid|
|400|PINNED_DIALOGS_TOO_MUCH|Too many pinned dialogs|
|400|RANGES_INVALID|Invalid range provided|
|400|USER_BANNED_IN_CHANNEL|You're banned from sending messages in supergroups/channels|
|-3002|All workers are busy. Active_queries = X|All workers are busy. Active_queries = X|
|406|AUTH_KEY_DUPLICATED|An auth key with the same ID was already generated|
|401|SESSION_PASSWORD_NEEDED|2FA is enabled, use a password to login|
|403|CHANNEL_PUBLIC_GROUP_NA|channel/supergroup not available|
|403|CHAT_WRITE_FORBIDDEN|You can't write in this chat|
|-500|No workers running|Internal error|
|-504|memory limit exit|Internal error|
|-503|Timeout|Timeout while fetching data|


