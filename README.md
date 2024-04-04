# The Altive Handbook

## Development｜開発方法

### Setup｜初回セットアップ

```shell
# Install Hugo by Homebrew
brew install hugo
# Check the Hugo version
hugo version
```

```shell
# Install Go by Homebrew
brew install go
# Check the Go version
go version
```

```shell
# Install npm by Homebrew
brew install npm
# Install npm packages
npm install
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

Create a markdown file in the directory where you want to place it.

Or you can add it with the following command.

```shell
hugo new content directory/page-name.md
```

## Build｜ビルド方法

The artifact is created in the public directory.

```shall
hugo
```

## Deploy｜デプロイ方法

When a GitHub pull request is merged (pushed to the main branch),
GitHub Actions automatically deploys it.

`.github/workflows/deploy.yml`
