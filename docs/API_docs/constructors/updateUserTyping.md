---
title: "updateUserTyping"
description: "The user is preparing a message; typing, recording, uploading, etc. This update is valid for 6 seconds. If no repeated update received after 6 seconds, it should be considered that the user stopped doing whatever he's been doing."
nav_exclude: true
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
---
# Constructor: updateUserTyping  
[Back to constructors index](/API_docs/constructors/index.html)



The user is preparing a message; typing, recording, uploading, etc. This update is valid for 6 seconds. If no repeated update received after 6 seconds, it should be considered that the user stopped doing whatever he's been doing.

### Attributes:

| Name     |    Type       | Required | Description |
|----------|---------------|----------|-------------|
|user\_id|[long](/API_docs/types/long.html) | Yes|
|action|[SendMessageAction](/API_docs/types/SendMessageAction.html) | Yes|Action type<br>Param added in [Layer 17](https://core.telegram.org/api/layers#layer-17).|



### Type: [Update](/API_docs/types/Update.html)


### Example:

```php
$updateUserTyping = ['_' => 'updateUserTyping', 'user_id' => long, 'action' => SendMessageAction];
```  
