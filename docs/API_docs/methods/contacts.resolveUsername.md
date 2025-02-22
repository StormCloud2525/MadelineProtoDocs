---
title: "contacts.resolveUsername"
description: "You cannot use this method directly, use the resolveUsername, getPwrChat, getInfo, getFullInfo methods instead (see https://docs.madelineproto.xyz for more info)"
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/contacts_resolveUsername.html
---
# Method: contacts.resolveUsername
[Back to methods index](index.html)



You cannot use this method directly, use the resolveUsername, getPwrChat, getInfo, getFullInfo methods instead (see https://docs.madelineproto.xyz for more info)

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|username|[string](/API_docs/types/string.html) | @username to resolve | Yes|


### Return type: [contacts.ResolvedPeer](/API_docs/types/contacts.ResolvedPeer.html)

### Can bots use this method: **YES**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$contacts_ResolvedPeer = $MadelineProto->contacts->resolveUsername(['username' => 'string', ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|CONNECTION_DEVICE_MODEL_EMPTY|Device model empty|
|400|CONNECTION_LAYER_INVALID|Layer invalid|
|400|INPUT_FETCH_FAIL|Failed deserializing TL payload|
|400|USERNAME_INVALID|The provided username is not valid|
|400|USERNAME_NOT_OCCUPIED|The provided username is not occupied|
|-3002|All workers are busy. Active_queries = X|All workers are busy. Active_queries = X|
|406|AUTH_KEY_DUPLICATED|An auth key with the same ID was already generated|
|401|AUTH_KEY_PERM_EMPTY|The temporary auth key must be binded to the permanent auth key to use these methods.|
|401|SESSION_PASSWORD_NEEDED|2FA is enabled, use a password to login|
|-503|Timeout|Timeout while fetching data|


