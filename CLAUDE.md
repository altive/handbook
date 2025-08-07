# CLAUDE.md

## 概要

このプロジェクトは Altive Handbook - Hugo と Docsy テーマで構築された会社のドキュメントサイトです。

このハンドブックは、公開可能なすべての会社全体の情報の Single Source of Truth (SSOT) として機能します。日本語コンテンツ（`content/ja/`）を対象とし、会社のポリシー、エンジニアリングプラクティス、オンボーディング、ジョブファミリー等を網羅する包括的なドキュメントシステムとして構造化されています。

### 主要コンポーネント

- **Hugo Static Site Generator**: 多言語サポート（主に日本語）でサイトを動作させる
- **Docsy テーマ**: UI フレームワークを提供する Google のドキュメントテーマ
- **コンテンツ構造**: 階層的なドキュメントセクションで `content/ja/` 配下に整理
- **デプロイ**: GitHub Actions により main ブランチプッシュ時に GitHub Pages へ自動デプロイ

### コンテンツ構成

ハンドブックは以下の主要セクションに整理されています：
- `company/`: 会社のポリシー、価値観、ミッション、福利厚生
- `engineering/`: 開発プラクティス、コードルール、Flutter/Git ガイドライン
- `onboarding/`: 新入社員向けガイドと手順
- `job-families/`: 役職定義とキャリア進路
- `communication/`: 会議プロトコルとコミュニケーションガイドライン
- `handbook/`: ハンドブック自体に関するメタドキュメント

## 開発コマンド

### 初期セットアップ
```bash
# Hugo をインストール（必須）
brew install hugo

# Go をインストール（Hugo モジュールに必須）
brew install go

# npm の依存関係をインストール
npm install
```

### 開発サーバー
```bash
# ライブリロード付きで開発サーバーを起動
hugo server

# ドラフトコンテンツを含める
hugo server -D

# 変更されたファイルに自動ナビゲート
hugo server --navigateToChanged
```

### コンテンツ作成
```bash
# 新しいコンテンツページを作成
hugo new content directory/page-name.md
```

### ビルドコマンド
```bash
# 開発用にビルド
npm run build

# 本番用にビルド
npm run build:production

# ビルド成果物をクリーン
npm run clean
```

### テスト
```bash
# リンクチェックを実行（ビルド後）
npm test
```

## コンテンツガイドライン

### Front Matter フォーマット
一貫性のため YAML front matter を使用（TOML や JSON ではなく）：

```yaml
---
title: "ページタイトル"           # 必須
description: "ページの説明" # 推奨
linkTitle: "短いタイトル"      # オプション
slug: "カスタム-url-スラッグ"       # オプション
---
```

### 言語とローカライゼーション
- 主要言語: 日本語（`ja`）
- コンテンツは `content/ja/` に配置
- Hugo は CJK 言語サポートで設定済み
- すべてのコンテンツに「なぜ」を明確に含める

### デプロイ
- main ブランチプッシュ時に GitHub Actions による自動デプロイ
- 本番サイト: https://handbook.altive.co.jp
- プレビュー用の Netlify デプロイもサポート
