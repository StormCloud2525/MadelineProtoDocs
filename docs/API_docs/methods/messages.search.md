---
title: "messages.search"
description: "Gets back found messages"
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/messages_search.html
---
# Method: messages.search
[Back to methods index](index.html)



Gets back found messages

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|peer|[Username, chat ID, Update, Message or InputPeer](/API_docs/types/InputPeer.html) | User or chat, histories with which are searched, or [(inputPeerEmpty)](../constructors/inputPeerEmpty.html) constructor for global search | Optional|
|q|[string](/API_docs/types/string.html) | Text search request | Yes|
|from\_id|[Username, chat ID, Update, Message or InputPeer](/API_docs/types/InputPeer.html) | Only return messages sent by the specified user ID | Optional|
|top\_msg\_id|[int](/API_docs/types/int.html) | [Thread ID](https://core.telegram.org/api/threads) | Optional|
|filter|[MessagesFilter](/API_docs/types/MessagesFilter.html) | Filter to return only specified message types | Optional|
|min\_date|[int](/API_docs/types/int.html) | If a positive value was transferred, only messages with a sending date bigger than the transferred one will be returned | Yes|
|max\_date|[int](/API_docs/types/int.html) | If a positive value was transferred, only messages with a sending date smaller than the transferred one will be returned | Yes|
|offset\_id|[int](/API_docs/types/int.html) | Only return messages starting from the specified message ID | Yes|
|add\_offset|[int](/API_docs/types/int.html) | [Additional offset](https://core.telegram.org/api/offsets) | Yes|
|limit|[int](/API_docs/types/int.html) | [Number of results to return](https://core.telegram.org/api/offsets) | Yes|
|max\_id|[int](/API_docs/types/int.html) | [Maximum message ID to return](https://core.telegram.org/api/offsets) | Yes|
|min\_id|[int](/API_docs/types/int.html) | [Minimum message ID to return](https://core.telegram.org/api/offsets) | Yes|
|hash|[long](/API_docs/types/long.html) |  | Yes|


### Return type: [messages.Messages](/API_docs/types/messages.Messages.html)

### Can bots use this method: **NO**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$messages_Messages = $MadelineProto->messages->search(['peer' => InputPeer, 'q' => 'string', 'from_id' => InputPeer, 'top_msg_id' => int, 'filter' => MessagesFilter, 'min_date' => int, 'max_date' => int, 'offset_id' => int, 'add_offset' => int, 'limit' => int, 'max_id' => int, 'min_id' => int, 'hash' => long, ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|CHANNEL_INVALID|The provided channel is invalid|
|400|CHANNEL_PRIVATE|You haven't joined this channel/supergroup|
|400|CHAT_ADMIN_REQUIRED|You must be an admin in this chat to do this|
|400|FROM_PEER_INVALID|The specified from_id is invalid|
|400|INPUT_FILTER_INVALID|The specified filter is invalid|
|400|INPUT_USER_DEACTIVATED|The specified user was deleted|
|400|MSG_ID_INVALID|Invalid message ID provided|
|400|PEER_ID_INVALID|The provided peer id is invalid|
|400|PEER_ID_NOT_SUPPORTED|The provided peer ID is not supported|
|400|SEARCH_QUERY_EMPTY|The search query is empty|
|400|USER_ID_INVALID|The provided user ID is invalid|
|406|AUTH_KEY_DUPLICATED|An auth key with the same ID was already generated|
|-503|Timeout|Timeout while fetching data|


