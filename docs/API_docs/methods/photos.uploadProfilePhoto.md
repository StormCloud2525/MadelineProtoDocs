---
title: "photos.uploadProfilePhoto"
description: "Updates current user profile photo."
grand_parent: "Telegram RPC API"
parent: "Methods"
image: https://docs.madelineproto.xyz/favicons/android-chrome-256x256.png
redirect_from: /API_docs/methods/photos_uploadProfilePhoto.html
---
# Method: photos.uploadProfilePhoto
[Back to methods index](index.html)



Updates current user profile photo.

### Parameters:

| Name     |    Type       | Description | Required |
|----------|---------------|-------------|----------|
|file|[File path or InputFile](/API_docs/types/InputFile.html) | File saved in parts by means of [upload.saveFilePart](../methods/upload.saveFilePart.html) method | Optional|
|video|[File path or InputFile](/API_docs/types/InputFile.html) | [Animated profile picture](https://core.telegram.org/api/files#animated-profile-pictures) video | Optional|
|video\_start\_ts|[double](/API_docs/types/double.html) | Floating point UNIX timestamp in seconds, indicating the frame of the video that should be used as static preview. | Optional|


### Return type: [photos.Photo](/API_docs/types/photos.Photo.html)

### Can bots use this method: **NO**


### MadelineProto Example ([now async for huge speed and parallelism!](https://docs.madelineproto.xyz/docs/ASYNC.html)):


```php
if (!file_exists('madeline.php')) {
    copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';

$MadelineProto = new \danog\MadelineProto\API('session.madeline');
$MadelineProto->start();

$photos_Photo = $MadelineProto->photos->uploadProfilePhoto(['file' => InputFile, 'video' => InputFile, 'video_start_ts' => double, ]);
```

### Errors

| Code | Type     | Description   |
|------|----------|---------------|
|400|ALBUM_PHOTOS_TOO_MANY|Too many |
|400|FILE_PARTS_INVALID|The number of file parts is invalid|
|400|IMAGE_PROCESS_FAILED|Failure while processing image|
|400|PHOTO_CROP_FILE_MISSING|Photo crop file missing|
|400|PHOTO_CROP_SIZE_SMALL|Photo is too small|
|400|PHOTO_EXT_INVALID|The extension of the photo is invalid|
|400|PHOTO_FILE_MISSING|Profile photo file missing|
|400|VIDEO_FILE_INVALID|The specified video file is invalid|
|-503|Timeout|Timeout while fetching data|


