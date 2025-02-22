---
title: "upload.saveFilePart"
description: "You cannot use this method directly, use the upload, downloadToStream, downloadToFile, downloadToDir methods instead; see https://docs.madelineproto.xyz for more info"
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/upload_saveFilePart.html
---
# Method: upload.saveFilePart
[Back to methods index](index.html)



You cannot use this method directly, use the upload, downloadToStream, downloadToFile, downloadToDir methods instead; see https://docs.madelineproto.xyz for more info

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|file\_id|[long](/API_docs/types/long.html) | Random file identifier created by the client | Yes|
|file\_part|[int](/API_docs/types/int.html) | Numerical order of a part | Yes|
|bytes|[bytes](/API_docs/types/bytes.html) | Binary data, contend of a part | Yes|


### Return type: [Bool](/API_docs/types/Bool.html)

### Can bots use this method: **YES**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$Bool = $MadelineProto->upload->saveFilePart(['file_id' => long, 'file_part' => int, 'bytes' => 'bytes', ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|CONNECTION_SYSTEM_EMPTY|Connection system empty|
|400|FILE_PART_EMPTY|The provided file part is empty|
|400|FILE_PART_INVALID|The file part number is invalid|
|400|INPUT_FETCH_FAIL|Failed deserializing TL payload|
|-3002|All workers are busy. Active_queries = X|All workers are busy. Active_queries = X|
|406|AUTH_KEY_DUPLICATED|An auth key with the same ID was already generated|
|401|SESSION_PASSWORD_NEEDED|2FA is enabled, use a password to login|
|-500|No workers running|Internal error|
|-503|Timeout|Timeout while fetching data|


