---
title: "updateChatParticipantAdd"
description: "New group member."
nav_exclude: true
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
---
# Constructor: updateChatParticipantAdd  
[Back to constructors index](/API_docs/constructors/index.html)



New group member.

### Attributes:

| Name     |    Type       | Required | Description |
|----------|---------------|----------|-------------|
|chat\_id|[long](/API_docs/types/long.html) | Yes|
|user\_id|[long](/API_docs/types/long.html) | Yes|
|inviter\_id|[long](/API_docs/types/long.html) | Yes|
|date|[int](/API_docs/types/int.html) | Yes|When was the participant added|
|version|[int](/API_docs/types/int.html) | Yes|Chat version number|



### Type: [Update](/API_docs/types/Update.html)


### Example:

```php
$updateChatParticipantAdd = ['_' => 'updateChatParticipantAdd', 'chat_id' => long, 'user_id' => long, 'inviter_id' => long, 'date' => int, 'version' => int];
```  
