---
title: 開発環境セットアップ
description: エンジニアを対象としたMacのセットアップについて
---

## Flutterセットアップ
Altiveでは、バックエンド・フロントエンドの垣根なく、エンジニアが必要に応じてフルスタックで開発を行います。
そのため、FlutterとiOSやAndroidの開発環境は必須です。

### Flutterセットアップのゴール
1. [flutter_app_template](https://github.com/altive/flutter_app_template)をリポジトリからCloneする
2. 好みのIDE (VS Codeなど) でアプリをビルドする
3. 以下のデバイスで起動確認できることをゴールとします。
    - iOS(Simulator/実機)
    - Android(Emulator/実機)
    - Web
    - macOS

### Flutter SDKのインストール
プロジェクトに依らないグローバルなFlutter SDKをインストールしましょう。

Flutter公式ドキュメントに沿って Apple Silicon 用のインストールを行ってください。

https://docs.flutter.dev/get-started/install/macos

### Flutter Version Management(FVM)のインストール
Altiveでは、Flutter SDKのバージョン管理に[fvm](https://fvm.app/)を使用しています。

各プロジェクトのリポジトリをCloneしたら、 `fvm install` コマンドで、プロジェクトで使っているFlutter SDKのバージョンをインストールしてください。

{{< alert title="Note" >}}
FVMについては、[FVMでFlutter SDKのバージョンをプロジェクト毎に管理する](https://zenn.dev/altiveinc/articles/flutter-version-management)もご参照ください。
{{< /alert >}}


### Melosのインストール
複数のパッケージを持つDartプロジェクトを一元管理するために[Melos](https://melos.invertase.dev/)を使用しています。

各プロジェクトのリポジトリをCloneしたら、 `melos bootstrap`コマンドで、全パッケージの依存関係をインストールしてください。

{{< alert title="Note" >}}
Melosについては[【v1.0.0】Melos紹介&チートシート](https://zenn.dev/altiveinc/articles/melos-for-multiple-packages-dart-projects)もご参照ください。
{{< /alert >}}


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
