---
title: "payments.getPaymentForm"
description: "Get a payment form"
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/payments_getPaymentForm.html
---
# Method: payments.getPaymentForm
[Back to methods index](index.html)



Get a payment form

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|peer|[Username, chat ID, Update, Message or InputPeer](/API_docs/types/InputPeer.html) |  | Optional|
|msg\_id|[int](/API_docs/types/int.html) | Message ID of payment form | Yes|
|theme\_params|[DataJSON](/API_docs/types/DataJSON.html) |  | Optional|


### Return type: [payments.PaymentForm](/API_docs/types/payments.PaymentForm.html)

### Can bots use this method: **NO**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$payments_PaymentForm = $MadelineProto->payments->getPaymentForm(['peer' => InputPeer, 'msg_id' => int, 'theme_params' => DataJSON, ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|MESSAGE_ID_INVALID|The provided message id is invalid|


