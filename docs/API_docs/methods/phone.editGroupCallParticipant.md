---
title: "phone.editGroupCallParticipant"
description: "phone.editGroupCallParticipant parameters, return type and example"
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/phone_editGroupCallParticipant.html
---
# Method: phone.editGroupCallParticipant
[Back to methods index](index.html)



### Parameters:

| Name     |    Type       | Required |
|----------|---------------|----------|
|call|[InputGroupCall](/API_docs/types/InputGroupCall.html) | Yes|
|participant|[Username, chat ID, Update, Message or InputPeer](/API_docs/types/InputPeer.html) | Optional|
|muted|[Bool](/API_docs/types/Bool.html) | Optional|
|volume|[int](/API_docs/types/int.html) | Optional|
|raise\_hand|[Bool](/API_docs/types/Bool.html) | Optional|
|video\_stopped|[Bool](/API_docs/types/Bool.html) | Optional|
|video\_paused|[Bool](/API_docs/types/Bool.html) | Optional|
|presentation\_paused|[Bool](/API_docs/types/Bool.html) | Optional|


### Return type: [Updates](/API_docs/types/Updates.html)

### Can bots use this method: **NO**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$Updates = $MadelineProto->phone->editGroupCallParticipant(['call' => InputGroupCall, 'participant' => InputPeer, 'muted' => Bool, 'volume' => int, 'raise_hand' => Bool, 'video_stopped' => Bool, 'video_paused' => Bool, 'presentation_paused' => Bool, ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|USER_VOLUME_INVALID|The specified user volume is invalid|


