---
title: "channelParticipantSelf"
description: "Myself"
nav_exclude: true
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
---
# Constructor: channelParticipantSelf  
[Back to constructors index](/API_docs/constructors/index.html)



Myself

### Attributes:

| Name     |    Type       | Required | Description |
|----------|---------------|----------|-------------|
|via\_request|[Bool](/API_docs/types/Bool.html) | Optional|
|user\_id|[long](/API_docs/types/long.html) | Yes|
|inviter\_id|[long](/API_docs/types/long.html) | Yes|
|date|[int](/API_docs/types/int.html) | Yes|When did I join the channel/supergroup|



### Type: [ChannelParticipant](/API_docs/types/ChannelParticipant.html)


### Example:

```php
$channelParticipantSelf = ['_' => 'channelParticipantSelf', 'via_request' => Bool, 'user_id' => long, 'inviter_id' => long, 'date' => int];
```  
