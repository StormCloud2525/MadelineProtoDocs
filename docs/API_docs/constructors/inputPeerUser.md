---
title: "inputPeerUser"
description: "Defines a user for further interaction."
nav_exclude: true
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
---
# Constructor: inputPeerUser  
[Back to constructors index](/API_docs/constructors/index.html)



Defines a user for further interaction.

### Attributes:

| Name     |    Type       | Required | Description |
|----------|---------------|----------|-------------|
|user\_id|[long](/API_docs/types/long.html) | Yes|
|access\_hash|[long](/API_docs/types/long.html) | Yes|**access\_hash** value from the [user](../constructors/user.html) constructor|



### Type: [InputPeer](/API_docs/types/InputPeer.html)


### Example:

```php
$inputPeerUser = ['_' => 'inputPeerUser', 'user_id' => long, 'access_hash' => long];
```  
