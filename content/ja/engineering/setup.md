---
title: 開発環境セットアップ
description: エンジニアを対象としたMacのセットアップについて
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

### お勧めシステム環境設定
{{% pageinfo %}}
この項目には情報が不足しています。追記してください。
{{% /pageinfo %}}

### Homebrew

Macでアプリケーションをインストールしたり、管理するためのツールです。

https://brew.sh/ja/

### VS Code

お勧めのIDEですが、好みのものがあれば、そちらを使ってください。

https://code.visualstudio.com/

### Raycast

お勧めのランチャーアプリです。
Mac標準の「Spotlight」よりも高機能で、より便利に使えます。

https://www.raycast.com/
