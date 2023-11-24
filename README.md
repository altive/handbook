# Altive Handbook

## Development｜開発方法

### Install｜インストール

```shell
# Install Hugo by Homebrew
brew install hugo
# Check the Hugo version
hugo version
```

### Run the development server｜開発用サーバーの起動

The hugo server allows you to develop and write articles locally.

Once you save a file, LiveReload allows you to see the changes immediately in your browser.

```shell
hugo server
# Web Server is available at http://localhost:1313/ (bind address 127.0.0.1) 
# Press Ctrl+C to stop
```

If you want to include a draft.

```shell
hugo server -D
```

If you want automatic redirection to modified files.

```shell
hugo server --navigateToChanged
```

## How to add a new page｜新しいページの追加方法

```shell
hugo new content posts/page-name.md
```

## Build｜ビルド方法

The artifact is created in the public directory.

```shall
hugo
```

## Deploy｜デプロイ方法

```shell
``````