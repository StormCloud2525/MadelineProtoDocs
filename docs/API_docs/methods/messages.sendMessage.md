---
title: "messages.sendMessage"
description: "Sends a message to a chat"
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/messages_sendMessage.html
---
# Method: messages.sendMessage
[Back to methods index](index.html)



Sends a message to a chat

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|no\_webpage|[Bool](/API_docs/types/Bool.html) | Set this flag to disable generation of the webpage preview | Optional|
|silent|[Bool](/API_docs/types/Bool.html) | Send this message silently (no notifications for the receivers) | Optional|
|background|[Bool](/API_docs/types/Bool.html) | Send this message as background message | Optional|
|clear\_draft|[Bool](/API_docs/types/Bool.html) | Clear the draft field | Optional|
|noforwards|[Bool](/API_docs/types/Bool.html) |  | Optional|
|peer|[Username, chat ID, Update, Message or InputPeer](/API_docs/types/InputPeer.html) | The destination where the message will be sent | Optional|
|reply\_to\_msg\_id|[int](/API_docs/types/int.html) | The message ID to which this message will reply to | Optional|
|message|[string](/API_docs/types/string.html) | The message | Yes|
|reply\_markup|[ReplyMarkup](/API_docs/types/ReplyMarkup.html) | Reply markup for sending bot buttons | Optional|
|entities|Array of [MessageEntity](/API_docs/types/MessageEntity.html) | Message [entities](https://core.telegram.org/api/entities) for sending styled text | Optional|
|parse\_mode| [string](/API_docs/types/string.html) | Whether to parse HTML or Markdown markup in the message| Optional |
|schedule\_date|[int](/API_docs/types/int.html) | Scheduled message date for [scheduled messages](https://core.telegram.org/api/scheduled-messages) | Optional|
|send\_as|[Username, chat ID, Update, Message or InputPeer](/API_docs/types/InputPeer.html) |  | Optional|


### Return type: [Updates](/API_docs/types/Updates.html)

### Can bots use this method: **YES**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$Updates = $MadelineProto->messages->sendMessage(['no_webpage' => Bool, 'silent' => Bool, 'background' => Bool, 'clear_draft' => Bool, 'noforwards' => Bool, 'peer' => InputPeer, 'reply_to_msg_id' => int, 'message' => 'string', 'reply_markup' => ReplyMarkup, 'entities' => [MessageEntity, MessageEntity], 'parse_mode' => 'string', 'schedule_date' => int, 'send_as' => InputPeer, ]);
```


## Usage of reply_markup

You can provide bot API reply_markup objects here.  



## Return value 

If the length of the provided message is bigger than 4096, the message will be split in chunks and the method will be called multiple times, with the same parameters (except for the message), and an array of [Updates](../types/Updates.html) will be returned instead.



## Usage of parseMode:

Set parseMode to html to enable HTML parsing of the message.  

Set parseMode to Markdown to enable markown AND html parsing of the message.  

The following tags are currently supported:

```html
<br>a newline
<b><i>bold works ok, internal tags are stripped</i> </b>
<strong>bold</strong>
<em>italic</em>
<i>italic</i>
<u>underline</u>
<s>strikethrough</s>
<del>strikethrough</del>
<strike>strikethrough</strike>
<code>inline fixed-width code</code>
<pre>pre-formatted fixed-width code block</pre>
<blockquote>pre-formatted fixed-width code block</blockquote>
<a href="https://github.com">URL</a>
<a href="mention:@danogentili">Mention by username</a>
<a href="mention:186785362">Mention by user id</a>
<pre language="json">Pre tags can have a language attribute</pre>
```

You can also use normal markdown, note that to create mentions you must use the `mention:` syntax like in html:  

```markdown
[Mention by username](mention:@danogentili)
[Mention by user id](mention:186785362)
```

MadelineProto supports all html entities supported by [html_entity_decode](http://php.net/manual/en/function.html-entity-decode.php).
### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|420|SLOWMODE_WAIT_X|Slowmode is enabled in this chat: wait X seconds before sending another message to this chat.|
|400|BOT_DOMAIN_INVALID|Bot domain invalid|
|400|BOT_INVALID|This is not a valid bot|
|400|BUTTON_DATA_INVALID|The data of one or more of the buttons you provided is invalid|
|400|BUTTON_TYPE_INVALID|The type of one or more of the buttons you provided is invalid|
|400|BUTTON_URL_INVALID|Button URL invalid|
|400|CHANNEL_INVALID|The provided channel is invalid|
|400|CHANNEL_PRIVATE|You haven't joined this channel/supergroup|
|400|CHAT_ADMIN_REQUIRED|You must be an admin in this chat to do this|
|400|CHAT_ID_INVALID|The provided chat id is invalid|
|400|CHAT_RESTRICTED|You can't send messages in this chat, you were restricted|
|400|ENCRYPTION_DECLINED|The secret chat was declined|
|400|ENTITIES_TOO_LONG|You provided too many styled message entities|
|400|ENTITY_MENTION_USER_INVALID|You mentioned an invalid user|
|400|FROM_MESSAGE_BOT_DISABLED|Bots can't use fromMessage min constructors|
|400|INPUT_FETCH_FAIL|Failed deserializing TL payload|
|400|INPUT_USER_DEACTIVATED|The specified user was deleted|
|400|MESSAGE_EMPTY|The provided message is empty|
|400|MESSAGE_TOO_LONG|The provided message is too long|
|400|MSG_ID_INVALID|Invalid message ID provided|
|400|PEER_ID_INVALID|The provided peer id is invalid|
|400|PINNED_DIALOGS_TOO_MUCH|Too many pinned dialogs|
|400|POLL_OPTION_INVALID|Invalid poll option provided|
|400|REPLY_MARKUP_INVALID|The provided reply markup is invalid|
|400|REPLY_MARKUP_TOO_LONG|The specified reply_markup is too long|
|400|SCHEDULE_BOT_NOT_ALLOWED|Bots cannot schedule messages|
|400|SCHEDULE_DATE_TOO_LATE|You can't schedule a message this far in the future|
|400|SCHEDULE_STATUS_PRIVATE|Can't schedule until user is online, if the user's last seen timestamp is hidden by their privacy settings.|
|400|SCHEDULE_TOO_MUCH|There are too many scheduled messages|
|400|SEND_AS_PEER_INVALID|You can't send messages as the specified peer|
|400|USER_BANNED_IN_CHANNEL|You're banned from sending messages in supergroups/channels|
|400|USER_IS_BLOCKED|You were blocked by this user|
|400|USER_IS_BOT|Bots can't send messages to other bots|
|400|YOU_BLOCKED_USER|You blocked this user|
|-3002|All workers are busy. Active_queries = X|All workers are busy. Active_queries = X|
|406|AUTH_KEY_DUPLICATED|An auth key with the same ID was already generated|
|401|AUTH_KEY_PERM_EMPTY|The temporary auth key must be binded to the permanent auth key to use these methods.|
|403|CHAT_WRITE_FORBIDDEN|You can't write in this chat|
|403|USER_IS_BLOCKED|You were blocked by this user|
|-500|No workers running|Internal error|
|-504|memory limit exit|Internal error|
|-503|Timeout|Timeout while fetching data|


