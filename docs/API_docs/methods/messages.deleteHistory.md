---
title: "messages.deleteHistory"
description: "Deletes communication history."
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/messages_deleteHistory.html
---
# Method: messages.deleteHistory
[Back to methods index](index.html)



Deletes communication history.

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|just\_clear|[Bool](/API_docs/types/Bool.html) | Just clear history for the current user, without actually removing messages for every chat user | Optional|
|revoke|[Bool](/API_docs/types/Bool.html) | Whether to delete the message history for all chat participants | Optional|
|peer|[Username, chat ID, Update, Message or InputPeer](/API_docs/types/InputPeer.html) | User or chat, communication history of which will be deleted | Optional|
|max\_id|[int](/API_docs/types/int.html) | Maximum ID of message to delete | Yes|
|min\_date|[int](/API_docs/types/int.html) |  | Optional|
|max\_date|[int](/API_docs/types/int.html) |  | Optional|


### Return type: [messages.AffectedHistory](/API_docs/types/messages.AffectedHistory.html)

### Can bots use this method: **NO**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$messages_AffectedHistory = $MadelineProto->messages->deleteHistory(['just_clear' => Bool, 'revoke' => Bool, 'peer' => InputPeer, 'max_id' => int, 'min_date' => int, 'max_date' => int, ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|CHANNEL_PRIVATE|You haven't joined this channel/supergroup|
|400|CHAT_ID_INVALID|The provided chat id is invalid|
|400|MESSAGE_ID_INVALID|The provided message id is invalid|
|400|MSG_ID_INVALID|Invalid message ID provided|
|400|PEER_ID_INVALID|The provided peer id is invalid|
|-3002|All workers are busy. Active_queries = X|All workers are busy. Active_queries = X|
|406|AUTH_KEY_DUPLICATED|An auth key with the same ID was already generated|
|-503|Timeout|Timeout while fetching data|


