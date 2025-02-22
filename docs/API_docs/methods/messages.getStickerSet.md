---
title: "messages.getStickerSet"
description: "Get info about a stickerset"
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/messages_getStickerSet.html
---
# Method: messages.getStickerSet
[Back to methods index](index.html)



Get info about a stickerset

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|stickerset|[InputStickerSet](/API_docs/types/InputStickerSet.html) | Stickerset | Optional|
|hash|Array of [int](/API_docs/types/int.html) |  | Optional|


### Return type: [messages.StickerSet](/API_docs/types/messages.StickerSet.html)

### Can bots use this method: **YES**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$messages_StickerSet = $MadelineProto->messages->getStickerSet(['stickerset' => InputStickerSet, 'hash' => [int, int], ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|STICKERSET_INVALID|The provided sticker set is invalid|


