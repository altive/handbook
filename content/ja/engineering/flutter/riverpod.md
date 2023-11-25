+++
title = "Riverpod"
description = "Riverpod is a state management library for Flutter. It is a fork of the Provider package."
weight = 2
+++

## 命名規則
### Notifierの命名は末尾に State をつける
- `ref.watch(someStateProvider)` でStateが、 `ref.watch(someStateProvider.notifier)` でNotifierが取得でき、直感的であるため。
- Statefulである(Async)NotifierProviderか、それ以外のStatelessであるプロバイダかを瞬時に名前から見分けられるため。

## プロバイダの無効化（Invalidate）
プロバイダを無効化(ref.invalidate)するとき、複数のプロバイダを無効化したい場合がある。
その場合はメソッドを定義し、その中で複数のプロバイダを無効化するようにする。

また、特定の操作後に無効化を実行したい場合は、Viewではなく特定の操作を行うメソッド内で無効化のメソッドを呼び出す。

```dart
// 副作用のあるコマンドメソッド
Future<void> postEventReport() async {
  // イベントレポートを投稿する処理
  await post();
  // ここで無効化を実行する
  _invalidateEventData();
}
// 複数の無効化をまとめたメソッド（必要に応じてID等の引数を渡す）
void _invalidateEventData() {
  ref
      ..invalidate(some1provider)
      ..invalidate(some2provider);
}
```

## その他
### 原則、UIのみで使用する場合はClassを作らず、Recordを使用する
UIのみで使用するものの場合、Classを定義するコストがメリットを上回らないため。
ただし、Classを定義した方が取り回ししやすいケースや、 `abstract interface` で済むような場合を除く。

### 任意のタイミングで`Provider`を破棄したいとき場合は`invalidateSelf`を使うことができないか考える
例えば`XxxCommandProvider`等から対象の`Provider`を`invalidate`で破棄する形は命令的で漏れが発生する場合があるため、
可能であれば破棄したい`Provider`内で任意のstateを監視して`invalidateSelf`で破棄する。

### Notifierのstateの使い分け
Notifierに複数のパラメータを持つstateを持たせたい場合、RecordかFreezed Classを選ぶことになるが、それぞれ以下のようなメリット・デメリットが存在する。

||Record|Freezed Class|
|---|---|---|
|メリット|手軽に使用できる, 自動生成の手間がない|`copyWith`、`late final`等が使える|
|デメリット|copyWithが使えない|クラス定義・自動生成の手間がかかる|

上記のメリット・デメリットを鑑みて、下記のように使い分けることとする。
- 状態を保持したいパラメータが2つの場合はRecordを使用しても良い（Freezed Classでも可）
- 3つ以上の場合はFreezed Classを使用する