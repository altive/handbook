---
title: "ページの作成"
description: "ページの作成方法について"
---

## ページの作成

第三者や未来の自分が見たときに明確であるために、Why（なぜ）を書くこと。

### フロントマター

YAMLで記述する。
TOMLやJSONでも書けるが、以下のメリットがあるYAMLでの記述に統一している。

- JSONは波括弧が必要だったりKeyを引用符で囲う必要があったりして冗長である
- TOMLはGitHub上でのマークダウンプレビューに対応していない
- YAMLであれば、VS CodeのMarkdown形式でもハイライトされる
- YAMLは他プロジェクトでも採用されており再学習が不要で知見を転用できる
（例：Flutterの`pubspec.yaml`, GitHub Actionsの`action.yml`など）

```yaml
---
# 必須
title: ページのタイトル
# 推奨
description: ページの説明
# 任意
linkTitle: リンクでtitleの代わりに使われる文字列
slug: URLの末尾を指定できる
---
```

### フロントマター設定項目集
https://gohugo.io/content-management/front-matter/
