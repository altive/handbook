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
x=x&y&z=z // nullの項目が無視されていない
```

以下のように正しい形で送信するために、`@Body(nullToAbsent: true)`を必ず使用する必要がある。

```
x=x&z=z // nullの項目が無視されている
```

将来的にRequestクラスにnullableのフィールドが追加された際に付与するのを忘れることがないように、`@FormUrlEncoded()`を利用する場合はRequestクラスにnullableのフィールドがあるかどうかに関わらず、`@Body(nullToAbsent: true)`を必ず使用する。

### `@Queries` と `@Query`の使い分け
クエリパラメータの中に未指定（`null`）でも良いパラメータが存在するかどうかによって使い分ける。

- `@Queries`: クエリパラメータ全てが必須である場合
- `@Query`: クエリパラメータの中に必須でないパラメータが存在する場合

`@Queries`では下記ドキュメントコメントのように`null`が許容されておらず、
もし`nullable`なフィールドが存在するモデルクラスに`@Queries`を付与してしまうと、
nullの項目のkeyのみがクエリパラメータに追加される形になってしまう。

```
Query parameter keys and values appended to the URL.

A `null` value for the map, as a key, or as a value is not allowed.
```

```
x=x&y&z=z // nullの項目が無視されていない
```


以下のように正しい形で送信するために、各パラメータごとに`@Query`を使用する必要がある。

```
x=x&z=z // nullの項目が無視されている
```
