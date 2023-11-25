+++
title = "Navigator"
description = "Navigator is a widget that manages a set of child widgets with a stack discipline. It allows us to navigate between screens by pushing and popping screens onto and off the stack."
weight = 2
+++

## Navigator 1.0 と Navigator 2.0 (e.g. go_router)の使い分け

### Navigator 2.0 を使用するところ
- Webを想定したパスを使ったページ遷移
- DeepLink

### Navigator 1.0 を使用するところ
- ダイアログ表示
- コールバックや戻り値で値をやり取りする、モーダル表示（スマートフォンでは全画面表示されることも多い）
