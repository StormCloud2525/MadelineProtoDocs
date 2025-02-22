---
title: "auth.importAuthorization"
description: "You cannot use this method directly, use $MadelineProto->importAuthorization($authorization) instead, see https://docs.madelineproto.xyz/docs/LOGIN.html"
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/auth_importAuthorization.html
---
# Method: auth.importAuthorization
[Back to methods index](index.html)



You cannot use this method directly, use $MadelineProto->importAuthorization($authorization) instead, see https://docs.madelineproto.xyz/docs/LOGIN.html

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|id|[long](/API_docs/types/long.html) |  | Yes|
|bytes|[bytes](/API_docs/types/bytes.html) | Authorization key | Yes|


### Return type: [auth.Authorization](/API_docs/types/auth.Authorization.html)

### Can bots use this method: **YES**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$auth_Authorization = $MadelineProto->auth->importAuthorization(['id' => long, 'bytes' => 'bytes', ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|AUTH_BYTES_INVALID|The provided authorization is invalid|
|400|INPUT_FETCH_FAIL|Failed deserializing TL payload|
|400|USER_ID_INVALID|The provided user ID is invalid|


