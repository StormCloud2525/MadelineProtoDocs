---
title: "account.deleteAccount"
description: "Delete the user's account from the telegram servers. Can be used, for example, to delete the account of a user that provided the login code, but forgot the [2FA password and no recovery method is configured](https://core.telegram.org/api/srp)."
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/account_deleteAccount.html
---
# Method: account.deleteAccount
[Back to methods index](index.html)



Delete the user's account from the telegram servers. Can be used, for example, to delete the account of a user that provided the login code, but forgot the [2FA password and no recovery method is configured](https://core.telegram.org/api/srp).

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|reason|[string](/API_docs/types/string.html) | Why is the account being deleted, can be empty | Yes|


### Return type: [Bool](/API_docs/types/Bool.html)

### Can bots use this method: **NO**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$Bool = $MadelineProto->account->deleteAccount(['reason' => 'string', ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|420|2FA_CONFIRM_WAIT_X|Since this account is active and protected by a 2FA password, we will delete it in 1 week for security purposes. You can cancel this process at any time, you'll be able to reset your account in X seconds.|
|406|AUTH_KEY_DUPLICATED|An auth key with the same ID was already generated|


