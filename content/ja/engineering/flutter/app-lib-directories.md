---
title: "App lib directories"
description: >
  Flutterアプリのlibディレクトリの構成についてのAltive標準構成を提示する。
  アプリごとに最適解は異なるが、推奨を示す。
  実践して感じた改善案があれば、ぜひIssueやPRを投げてください。
weight: 2
---

## Overview

- `adapters`
    - `{package_name}_provider.dart`
- `environment`
- `features`
  - `{feature_name}`
- `router`
- `theme`
- `pages`
  - `{page_name}_page.dart`
  - `{page_name}/{page_name}_page.dart`
  - `{page_name}/{view_name}_view.dart`
- `widgets`
  - `{category_name}/{widget_name}.dart`

## Adapters
e.g.
- `authenticator_provider.dart`
- `firebase_storage_provider.dart`

アプリ外パッケージとアプリの仲介役となる変換器をプロバイダとして提供する。

多くは、Riverpodのプロバイダを定義して、パッケージクラスインスタンスを提供する。

## Environment

`dev`, `stg`, `prod` など環境分けに関するコードを配置する。

## Features
e.g.
- `file_uploader`

API Client等は別パッケージに切り出している前提で、ビジネスロジックを格納する場所。

UI層はここには入れない。共通コンポーネントなら `widgets`に、ページファイルなら `pages` に入れること。

## Router
e.g.

アプリのページ遷移に関するファイルを配置し、アプリから利用する。

## Theme
e.g.

アプリのテーマに関するファイルを配置し、ThemeDataをアプリに提供する。

## Pages
e.g.
- `main_page.dart`
- `home_page/home_page.dart`
- `home_page/news_view.dart`

ページ単位のWidgetと、ページ専用コンポーネントWidgetsを格納する。

画面構成やタブの構成が変わったときや、複数タブから遷移できるページはどこに配置するのか迷わないように、フラットに配置する。

ページファイル1個のみで賄える場合は、ページファイル単体で配置する。
コンポーネントやTabBarViewなどを切り出した複数ファイルで構成される場合は、ページ名のフォルダを作って格納する。

Presentation層の肥大を防ぐために、ビジネスロジックはプロバイダに抽出し、 `features` に配置する。

## Widgets
e.g.
- `button/primary_button.dart`
- `dialog/show_error_dialog.dart`

複数箇所から使われるコンポーネントWidgetsを格納する。

フラット配置だと数が多くなりすぎるし、カテゴリごとに探しやすいように種類ごとにフォルダを作って配置する。

