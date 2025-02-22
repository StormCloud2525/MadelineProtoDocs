---
title: "messages.getExportedChatInvites"
description: "messages.getExportedChatInvites parameters, return type and example"
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/messages_getExportedChatInvites.html
---
# Method: messages.getExportedChatInvites
[Back to methods index](index.html)



### Parameters:

| Name     |    Type       | Required |
|----------|---------------|----------|
|revoked|[Bool](/API_docs/types/Bool.html) | Optional|
|peer|[Username, chat ID, Update, Message or InputPeer](/API_docs/types/InputPeer.html) | Optional|
|admin\_id|[Username, chat ID, Update, Message or InputUser](/API_docs/types/InputUser.html) | Optional|
|offset\_date|[int](/API_docs/types/int.html) | Optional|
|offset\_link|[string](/API_docs/types/string.html) | Optional|
|limit|[int](/API_docs/types/int.html) | Yes|


### Return type: [messages.ExportedChatInvites](/API_docs/types/messages.ExportedChatInvites.html)

### Can bots use this method: **NO**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$messages_ExportedChatInvites = $MadelineProto->messages->getExportedChatInvites(['revoked' => Bool, 'peer' => InputPeer, 'admin_id' => InputUser, 'offset_date' => int, 'offset_link' => 'string', 'limit' => int, ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|ADMIN_ID_INVALID|The specified admin ID is invalid|
|400|CHAT_ADMIN_REQUIRED|You must be an admin in this chat to do this|


