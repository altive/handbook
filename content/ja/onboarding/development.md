---
title: 開発環境セットアップ
description: エンジニアを対象とした開発環境のセットアップについて。
---

## Flutterセットアップ
Altiveでは、バックエンド・フロントエンドの垣根なく、エンジニアが必要に応じてフルスタックで開発を行います。
そのため、FlutterとiOSやAndroidの開発環境は必須です。

### Flutter SDKのインストール
プロジェクトに依らないグローバルなFlutter SDKをインストールしましょう。

Flutter公式ドキュメントに沿って Apple Silicon 用のインストールを行ってください。

https://docs.flutter.dev/get-started/install/macos

### Flutter Version Managementのインストール
Altiveでは、Flutter SDKのバージョン管理に[fvm](https://fvm.app/)を使用しています。

各プロジェクトのリポジトリをCloneしたら、 `fvm install` コマンドで、プロジェクトで使っているFlutter SDKのバージョンをインストールしてください。

### Xcode
Xcodeは、App Storeからインストールすることもできますが、ダウンロード速度が遅いためお勧めしません。

「[Xcodes](https://github.com/XcodesOrg/xcodes)」を使って、ターミナルからインストールすることをお勧めします。

Homebrewを使ってインストール可能です。
```shell
brew install xcodesorg/made/xcodes
```
