---
title: "danog\\MadelineProto\\Settings: Settings class used for configuring MadelineProto."
description: ""
image: "https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png"
parent: "MadelineProto API"

---
# `danog\MadelineProto\Settings`
[Back to index](../../index.html)

> Author: Daniil Gentili <daniil@daniil.it>  
  

Settings class used for configuring MadelineProto.  




## Method list:
* `merge(\danog\MadelineProto\SettingsAbstract $settings): void`
* `getDefaultDc(): int`
* `getDefaultDcParams(): array`
* `setDefaultDc(int $dc): self`
* `getAppInfo(): \danog\MadelineProto\Settings\AppInfo`
* `setAppInfo(\danog\MadelineProto\Settings\AppInfo $appInfo): self`
* `getAuth(): \danog\MadelineProto\Settings\Auth`
* `setAuth(\danog\MadelineProto\Settings\Auth $auth): self`
* `getConnection(): \danog\MadelineProto\Settings\Connection`
* `setConnection(\danog\MadelineProto\Settings\Connection $connection): self`
* `getFiles(): \danog\MadelineProto\Settings\Files`
* `setFiles(\danog\MadelineProto\Settings\Files $files): self`
* `getLogger(): \danog\MadelineProto\Settings\Logger`
* `setLogger(\danog\MadelineProto\Settings\Logger $logger): self`
* `getPeer(): \danog\MadelineProto\Settings\Peer`
* `setPeer(\danog\MadelineProto\Settings\Peer $peer): self`
* `getPwr(): \danog\MadelineProto\Settings\Pwr`
* `setPwr(\danog\MadelineProto\Settings\Pwr $pwr): self`
* `getRpc(): \danog\MadelineProto\Settings\RPC`
* `setRpc(\danog\MadelineProto\Settings\RPC $rpc): self`
* `getSecretChats(): \danog\MadelineProto\Settings\SecretChats`
* `setSecretChats(\danog\MadelineProto\Settings\SecretChats $secretChats): self`
* `getSerialization(): \danog\MadelineProto\Settings\Serialization`
* `setSerialization(\danog\MadelineProto\Settings\Serialization $serialization): self`
* `getSchema(): \danog\MadelineProto\Settings\TLSchema`
* `setSchema(\danog\MadelineProto\Settings\TLSchema $schema): self`
* `getDb(): \danog\MadelineProto\Settings\DatabaseAbstract`
* `setDb(\danog\MadelineProto\Settings\DatabaseAbstract $db): self`
* `getIpc(): \danog\MadelineProto\Settings\Ipc`
* `setIpc(\danog\MadelineProto\Settings\Ipc $ipc): self`
* `getTemplates(): \danog\MadelineProto\Settings\Templates`
* `setTemplates(\danog\MadelineProto\Settings\Templates $templates): self`
* `getVoip(): \danog\MadelineProto\Settings\VoIP`
* `setVoip(\danog\MadelineProto\Settings\VoIP $voip): self`

## Methods:
### `merge(\danog\MadelineProto\SettingsAbstract $settings): void`

Merge another instance of settings.


Parameters:

* `$settings`: `\danog\MadelineProto\SettingsAbstract` Settings  


#### See also: 
* `\danog\MadelineProto\SettingsAbstract`




### `getDefaultDc(): int`

Get default DC ID.



### `getDefaultDcParams(): array`

Get default DC params.



### `setDefaultDc(int $dc): self`

Set default DC ID.


Parameters:

* `$dc`: `int` DC ID  



### `getAppInfo(): \danog\MadelineProto\Settings\AppInfo`

Get app information.


#### See also: 
* [`\danog\MadelineProto\Settings\AppInfo`: App information.](../../danog/MadelineProto/Settings/AppInfo.html)




### `setAppInfo(\danog\MadelineProto\Settings\AppInfo $appInfo): self`

Set app information.


Parameters:

* `$appInfo`: `\danog\MadelineProto\Settings\AppInfo` App information.  


#### See also: 
* [`\danog\MadelineProto\Settings\AppInfo`: App information.](../../danog/MadelineProto/Settings/AppInfo.html)




### `getAuth(): \danog\MadelineProto\Settings\Auth`

Get cryptography settings.


#### See also: 
* [`\danog\MadelineProto\Settings\Auth`: Cryptography settings.](../../danog/MadelineProto/Settings/Auth.html)




### `setAuth(\danog\MadelineProto\Settings\Auth $auth): self`

Set cryptography settings.


Parameters:

* `$auth`: `\danog\MadelineProto\Settings\Auth` Cryptography settings.  


#### See also: 
* [`\danog\MadelineProto\Settings\Auth`: Cryptography settings.](../../danog/MadelineProto/Settings/Auth.html)




### `getConnection(): \danog\MadelineProto\Settings\Connection`

Get connection settings.


#### See also: 
* [`\danog\MadelineProto\Settings\Connection`: Connection settings.](../../danog/MadelineProto/Settings/Connection.html)




### `setConnection(\danog\MadelineProto\Settings\Connection $connection): self`

Set connection settings.


Parameters:

* `$connection`: `\danog\MadelineProto\Settings\Connection` Connection settings.  


#### See also: 
* [`\danog\MadelineProto\Settings\Connection`: Connection settings.](../../danog/MadelineProto/Settings/Connection.html)




### `getFiles(): \danog\MadelineProto\Settings\Files`

Get file management settings.


#### See also: 
* [`\danog\MadelineProto\Settings\Files`: File management settings.](../../danog/MadelineProto/Settings/Files.html)




### `setFiles(\danog\MadelineProto\Settings\Files $files): self`

Set file management settings.


Parameters:

* `$files`: `\danog\MadelineProto\Settings\Files` File management settings.  


#### See also: 
* [`\danog\MadelineProto\Settings\Files`: File management settings.](../../danog/MadelineProto/Settings/Files.html)




### `getLogger(): \danog\MadelineProto\Settings\Logger`

Get logger settings.


#### See also: 
* [`\danog\MadelineProto\Settings\Logger`: Logger settings.](../../danog/MadelineProto/Settings/Logger.html)




### `setLogger(\danog\MadelineProto\Settings\Logger $logger): self`

Set logger settings.


Parameters:

* `$logger`: `\danog\MadelineProto\Settings\Logger` Logger settings.  


#### See also: 
* [`\danog\MadelineProto\Settings\Logger`: Logger settings.](../../danog/MadelineProto/Settings/Logger.html)




### `getPeer(): \danog\MadelineProto\Settings\Peer`

Get peer database settings.


#### See also: 
* [`\danog\MadelineProto\Settings\Peer`: Peer database settings.](../../danog/MadelineProto/Settings/Peer.html)




### `setPeer(\danog\MadelineProto\Settings\Peer $peer): self`

Set peer database settings.


Parameters:

* `$peer`: `\danog\MadelineProto\Settings\Peer` Peer database settings.  


#### See also: 
* [`\danog\MadelineProto\Settings\Peer`: Peer database settings.](../../danog/MadelineProto/Settings/Peer.html)




### `getPwr(): \danog\MadelineProto\Settings\Pwr`

Get PWRTelegram settings.


#### See also: 
* [`\danog\MadelineProto\Settings\Pwr`: PWRTelegram settings.](../../danog/MadelineProto/Settings/Pwr.html)




### `setPwr(\danog\MadelineProto\Settings\Pwr $pwr): self`

Set PWRTelegram settings.


Parameters:

* `$pwr`: `\danog\MadelineProto\Settings\Pwr` PWRTelegram settings.  


#### See also: 
* [`\danog\MadelineProto\Settings\Pwr`: PWRTelegram settings.](../../danog/MadelineProto/Settings/Pwr.html)




### `getRpc(): \danog\MadelineProto\Settings\RPC`

Get RPC settings.


#### See also: 
* [`\danog\MadelineProto\Settings\RPC`: RPC settings.](../../danog/MadelineProto/Settings/RPC.html)




### `setRpc(\danog\MadelineProto\Settings\RPC $rpc): self`

Set RPC settings.


Parameters:

* `$rpc`: `\danog\MadelineProto\Settings\RPC` RPC settings.  


#### See also: 
* [`\danog\MadelineProto\Settings\RPC`: RPC settings.](../../danog/MadelineProto/Settings/RPC.html)




### `getSecretChats(): \danog\MadelineProto\Settings\SecretChats`

Get secret chat settings.


#### See also: 
* [`\danog\MadelineProto\Settings\SecretChats`: Secret chat settings.](../../danog/MadelineProto/Settings/SecretChats.html)




### `setSecretChats(\danog\MadelineProto\Settings\SecretChats $secretChats): self`

Set secret chat settings.


Parameters:

* `$secretChats`: `\danog\MadelineProto\Settings\SecretChats` Secret chat settings.  


#### See also: 
* [`\danog\MadelineProto\Settings\SecretChats`: Secret chat settings.](../../danog/MadelineProto/Settings/SecretChats.html)




### `getSerialization(): \danog\MadelineProto\Settings\Serialization`

Get serialization settings.


#### See also: 
* [`\danog\MadelineProto\Settings\Serialization`: Serialization settings.](../../danog/MadelineProto/Settings/Serialization.html)




### `setSerialization(\danog\MadelineProto\Settings\Serialization $serialization): self`

Set serialization settings.


Parameters:

* `$serialization`: `\danog\MadelineProto\Settings\Serialization` Serialization settings.  


#### See also: 
* [`\danog\MadelineProto\Settings\Serialization`: Serialization settings.](../../danog/MadelineProto/Settings/Serialization.html)




### `getSchema(): \danog\MadelineProto\Settings\TLSchema`

Get TL schema settings.


#### See also: 
* [`\danog\MadelineProto\Settings\TLSchema`: TL schema settings.](../../danog/MadelineProto/Settings/TLSchema.html)




### `setSchema(\danog\MadelineProto\Settings\TLSchema $schema): self`

Set TL schema settings.


Parameters:

* `$schema`: `\danog\MadelineProto\Settings\TLSchema` TL schema settings.  


#### See also: 
* [`\danog\MadelineProto\Settings\TLSchema`: TL schema settings.](../../danog/MadelineProto/Settings/TLSchema.html)




### `getDb(): \danog\MadelineProto\Settings\DatabaseAbstract`

Get database settings.


#### See also: 
* [`\danog\MadelineProto\Settings\DatabaseAbstract`: Base class for storage backends.](../../danog/MadelineProto/Settings/DatabaseAbstract.html)




### `setDb(\danog\MadelineProto\Settings\DatabaseAbstract $db): self`

Set database settings.


Parameters:

* `$db`: `\danog\MadelineProto\Settings\DatabaseAbstract` DatabaseAbstract settings.  


#### See also: 
* [`\danog\MadelineProto\Settings\DatabaseAbstract`: Base class for storage backends.](../../danog/MadelineProto/Settings/DatabaseAbstract.html)




### `getIpc(): \danog\MadelineProto\Settings\Ipc`

Get IPC server settings.


#### See also: 
* [`\danog\MadelineProto\Settings\Ipc`: IPC server settings.](../../danog/MadelineProto/Settings/Ipc.html)




### `setIpc(\danog\MadelineProto\Settings\Ipc $ipc): self`

Set IPC server settings.


Parameters:

* `$ipc`: `\danog\MadelineProto\Settings\Ipc` IPC server settings.  


#### See also: 
* [`\danog\MadelineProto\Settings\Ipc`: IPC server settings.](../../danog/MadelineProto/Settings/Ipc.html)




### `getTemplates(): \danog\MadelineProto\Settings\Templates`

Get template settings.


#### See also: 
* [`\danog\MadelineProto\Settings\Templates`: Web and CLI template settings for login.](../../danog/MadelineProto/Settings/Templates.html)




### `setTemplates(\danog\MadelineProto\Settings\Templates $templates): self`

Set template settings.


Parameters:

* `$templates`: `\danog\MadelineProto\Settings\Templates` Template settings  


#### See also: 
* [`\danog\MadelineProto\Settings\Templates`: Web and CLI template settings for login.](../../danog/MadelineProto/Settings/Templates.html)




### `getVoip(): \danog\MadelineProto\Settings\VoIP`

Get voIP settings.


#### See also: 
* [`\danog\MadelineProto\Settings\VoIP`: VoIP settings.](../../danog/MadelineProto/Settings/VoIP.html)




### `setVoip(\danog\MadelineProto\Settings\VoIP $voip): self`

Set voIP settings.


Parameters:

* `$voip`: `\danog\MadelineProto\Settings\VoIP` VoIP settings.  


#### See also: 
* [`\danog\MadelineProto\Settings\VoIP`: VoIP settings.](../../danog/MadelineProto/Settings/VoIP.html)




---
Generated by [danog/phpdoc](https://phpdoc.daniil.it)
