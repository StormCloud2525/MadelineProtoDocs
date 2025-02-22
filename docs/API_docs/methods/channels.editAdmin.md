---
title: "channels.editAdmin"
description: "Modify the admin rights of a user in a [supergroup/channel](https://core.telegram.org/api/channel)."
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/channels_editAdmin.html
---
# Method: channels.editAdmin
[Back to methods index](index.html)



Modify the admin rights of a user in a [supergroup/channel](https://core.telegram.org/api/channel).

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|channel|[Username, chat ID, Update, Message or InputChannel](/API_docs/types/InputChannel.html) | The [supergroup/channel](https://core.telegram.org/api/channel). | Optional|
|user\_id|[Username, chat ID, Update, Message or InputUser](/API_docs/types/InputUser.html) | The ID of the user whose admin rights should be modified | Optional|
|admin\_rights|[ChatAdminRights](/API_docs/types/ChatAdminRights.html) | The admin rights | Yes|
|rank|[string](/API_docs/types/string.html) | Indicates the role (rank) of the admin in the group: just an arbitrary string | Yes|


### Return type: [Updates](/API_docs/types/Updates.html)

### Can bots use this method: **YES**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$Updates = $MadelineProto->channels->editAdmin(['channel' => InputChannel, 'user_id' => InputUser, 'admin_rights' => ChatAdminRights, 'rank' => 'string', ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|ADMIN_RANK_EMOJI_NOT_ALLOWED|An admin rank cannot contain emojis|
|400|ADMIN_RANK_INVALID|The specified admin rank is invalid.|
|400|ADMINS_TOO_MUCH|There are too many admins|
|400|BOT_CHANNELS_NA|Bots can't edit admin privileges|
|400|BOT_GROUPS_BLOCKED|This bot can't be added to groups|
|400|BOTS_TOO_MUCH|There are too many bots in this chat/channel|
|400|CHANNEL_INVALID|The provided channel is invalid|
|400|CHANNEL_PRIVATE|You haven't joined this channel/supergroup|
|400|CHAT_ADMIN_REQUIRED|You must be an admin in this chat to do this|
|400|FRESH_CHANGE_ADMINS_FORBIDDEN|You were just elected admin, you can't add or modify other admins yet|
|400|INPUT_USER_DEACTIVATED|The specified user was deleted|
|400|PEER_ID_INVALID|The provided peer id is invalid|
|400|USER_BLOCKED|User blocked|
|400|USER_CREATOR|You can't leave this channel, because you're its creator|
|400|USER_ID_INVALID|The provided user ID is invalid|
|400|USER_NOT_MUTUAL_CONTACT|The provided user is not a mutual contact|
|400|USERS_TOO_MUCH|The maximum number of users has been exceeded (to create a chat, for example)|
|406|FRESH_CHANGE_ADMINS_FORBIDDEN|You were just elected admin, you can't add or modify other admins yet|
|403|CHAT_ADMIN_INVITE_REQUIRED|You do not have the rights to do this|
|403|CHAT_WRITE_FORBIDDEN|You can't write in this chat|
|403|RIGHT_FORBIDDEN|Your admin rights do not allow you to do this|
|403|USER_CHANNELS_TOO_MUCH|One of the users you tried to add is already in too many channels/supergroups|
|403|USER_NOT_MUTUAL_CONTACT|The provided user is not a mutual contact|
|403|USER_PRIVACY_RESTRICTED|The user's privacy settings do not allow you to do this|
|403|USER_RESTRICTED|You're spamreported, you can't create channels or chats.|


