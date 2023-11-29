---
title: Flutter
description: >
  A short lead description about this section page. Text here can also be **bold** or _italic_ and can even be split over multiple paragraphs.
---

### APIレスポンスのモデルクラスをUIコンポーネントでそのまま使用するか

以下に該当する場合は、必要なフィールドのみを個別にUIコンポーネントの引数で渡して利用するようにする。

* 特定のAPIに依存しない共通のUIコンポーネントである
* モデルクラスとの関連性が低いUIコンポーネントである
* モデルクラスに、UIコンポーネントで使用しない余分なフィールドが多く含まれる

以上に該当しない場合や、UIの名前とモデルクラスの名前が一致したり、違和感ない場合はそのまま使用する。

e.g., `EventReport` というモデルクラスを `EventReportListTile` の引数として使用する。

UIに最適化された、専用のIn-houseAPIであれば、そのまま使用できることが多い。

### Pageクラスの引数には極力オブジェクトを設定しない
詳細ページや編集ページなどのPageクラスで引数に値を渡したい場合は、ID等のパラメータを設定し遷移先でProviderを通じて必要なオブジェクトを取得する。

なお、コスト的な問題やオブジェクトにした場合のメリットが大きい場合は除く。