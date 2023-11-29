---
title: REST API Client
description: REST API Client
weight: 10
---

## 前提
`GET`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `TRACE` は冪等であるべき。  
`POST`, `PATCH`, `CONNECT` は冪等ではない。

## 命名

### Request body

原則、APIエンドポイントへ送信するリクエストボディ用のモデルクラスを作成する。  
`{HTTPメソッド}{目的語}RequestBody` とする。

* GetUserProfileRequestBody
* PostCommentRequestBody
* DeleteCommentRequestBody
* PatchSettingsRequestBody
* PutMyProfileRequestBody

### Response data

原則、APIエンドポイントで取得できるレスポンスボディのモデルクラスを作成する。  
`{HTTPメソッド}{目的語}ResponseBody` とする。

* GetUserProfileResponseBody
* PostCommentResponseBody
* DeleteCommentResponseBody
* PatchSettingsResponseBody
* PutMyProfileResponseBody

### 例外

* 実際のHTTPメソッドが不適切である場合（取得や削除をPOSTで行ってしまっているなど）、期待値となるHTTPメソッドを使用して命名する。
* レスポンスがListJSONの場合は、レスポンスデータ用のモデルクラスを作らくても良い

## Dio

## Retrofit
### `@FormUrlEncoded`を使ってBodyを送信する場合は`@Body(nullToAbsent: true)`を必ず使用する
前提として、`Content-Type: application/x-www-form-urlencoded`でリクエストを送信する場合、各エンドポイントごとに`@FormUrlEncoded()`を付与する必要がある。

`@FormUrlEncoded()`を付与しているエンドポイントのRequestクラスにnullableのフィールドが含まれているとBodyが下記のようになってしまうためである。

```
x=x&y&z=z
```

以下のように正しい形で送信するために、nullの項目を無視してBodyの形に変換するため、`@Body(nullToAbsent: true)`を必ず使用する必要がある。

```
x=x&z=z
```

将来的にRequestクラスにnullableのフィールドが追加された際に付与するのを忘れることがないように、`@FormUrlEncoded()`を利用する場合はRequestクラスにnullableのフィールドがあるかどうかに関わらず、`@Body(nullToAbsent: true)`を必ず使用する。
