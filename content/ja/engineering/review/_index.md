---
title: レビュー
description: プルリクエストやコードレビューについて。
---

{{< alert title="Note" >}}
レビューについての「方向性」や「ルール」をまとめるページです。プログラミング言語によらないプラクティスをまとめましょう。
{{< /alert >}}

## コードレビューの第一目的は、実装や知見の共有

以下の項目は、実装の単体テスト等で担保し、コードレビューでは副産物程度に考えましょう。

- コードの品質向上
- バグ・エラーの発見

プルリクエストで設計のレビューを行うことは可能ですが、手戻り等を考えると適していません。

Issueに設計を書き、チームメンバーが軽い設計レビューをできるようにしましょう。

## レビューは批判ではなく、建設的な議論を促進することを目的とする

- 決して批判しないこと
- 批判と受け取らないこと

Tips: ローコンテキスト言語である英語でコメントしてみるのも良いかも？

## レビュワーの負担を軽くする

レビューはレビュイー（実装者）とレビュワーの双方がいて成り立つものです。

双方ともに配慮し負担を軽くするのがベストではありますが、どちらかといえばレビュワーの負担を軽くすべきです。例えば…

- UIの変更がある場合は、画像や動画を添付してビジュアルの差分を示す
- セルフレビューを行ない、適宜レビューコメントを追記することで重要な点を目立たせたり補足する
- 足りないと思ったら実装コードの中にもコメントを追記して文脈を付加する

## レビュイー（実装者）のススメ

- レビュワーや新メンバーが読みやすく理解しやすい実装を行うこと
- 適切に実装コード内にコメントを書いて補足すること
    - 目的と使い方などを分かりやすいように要約したものを記載する
    - 別Issue実装予定のものはTODOで理由とURLを添えること
- 1人以上に承認されてからマージすること（1人開発時を除く）
    - 完全に分担分けを行い、信頼のもとに実装する特殊状況時を除く
    - 指定したレビュワーが不在の際は、他のレビュワー1人以上の承認があればマージすること
      - ただし、マージ前に対象のレビュワーに確認してもらいたい場合はその限りではない

## レビュワー（レビューする者）のススメ

レビュイーの負担を考えすぎないこと。

- 些細な点でも気軽に指摘する。[Nits]などで瑣末であることを示すと良い
- 些細な点でも気軽に質問する。[Ask]などで質問であることを示すと良い
- 不在時にマージされたPRやコミットは、内容を軽く確認して修正箇所を把握し、必要に応じてコメントすること

## バッジを使いコメントのカテゴリーを示す

以下は実際に使っている例。伝われば良いので、文字や色は自由。

![badge](https://img.shields.io/badge/review-must-critical)
```
![badge](https://img.shields.io/badge/review-must-critical)
```
対応が必須と考える指摘。Assigneeは対応必須。

![badge](https://img.shields.io/badge/review-imo-important)
```
![badge](https://img.shields.io/badge/review-imo-important)
```
必須ではないが、「こうした方が良さそう」という意見の表明や提案。Assigneeは返答必須。

![badge](https://img.shields.io/badge/review-ask-informational)
```
![badge](https://img.shields.io/badge/review-ask-informational)
```
質問。Assigneeは返答必須。

![badge](https://img.shields.io/badge/review-nits-inactive)
```
![badge](https://img.shields.io/badge/review-nits-inactive)
```
些細な指摘やコメントであることを示します。Assigneeはリアクション（スタンプ）のみで済ませても問題ありません。

![badge](https://img.shields.io/badge/review-great-green)
```
![badge](https://img.shields.io/badge/review-great-green)
```
賞賛。Assigneeの対応・返答は不要。

![badge](https://img.shields.io/badge/review-note-yellowgreen)
```
![badge](https://img.shields.io/badge/review-note-yellowgreen)
```
メモの備忘録としての扱い。
Assigneeは賛同し対応した方が良いと思うのであれば、Issueを作成して後日対応することを推奨する。

## Approve, Comments, Request Changes の使い分け

原則として、これらのいずれかをつけることでレビューを完了したことを示す。

### Approve
マージして問題ないと判断したときに使用する。

### Comments
質問やコメントを書き、まずはAssigneeの返答が必要だと判断したときに使用する。

### Request Changes
![badge](https://img.shields.io/badge/review-must-critical) を付けてコメントした時など、
Assigneeの追加対応が必須だと判断したときに使用する。
