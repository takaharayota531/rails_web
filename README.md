# README

## 開発環境

- Ruby 3.1.2
- rails 7.0.4.2
- postgres 14

## 環境構築ログ

### 初期立ち上げ

まずは[docker 公式ドキュメント](https://docs.docker.jp/compose/rails.html)を参考に`Dockerfile`、`docker-compose.yaml`、`Gemfile`、`Gemfile.lock` ファイルを作成

注意点

- rails6 以降は webpack が必要なので yarn もインストール（[参考](https://qiita.com/NaokiIshimura/items/8203f74f8dfd5f6b87a0)）
- Nokogiri でエラーが出るので`bundle config set force_ruby_platform true`が必要（[参考](https://qiita.com/ohakutsu/items/4d14bee46da26f55a9be)、[原因](https://matsu.teraren.com/blog/2022/04/26/docker-m1-arm-glibc-error-on-nokogiri/)）
- [今回は遭遇しなかったが、ボツにした環境構築で発生した sass のエラー](https://qiita.com/tochisuke221/items/e50103275906c5a0ddf3)

以下のコマンドでプロジェクトの初期立ち上げ

```
docker-compose run web rails new . --force --database=postgresql
```

必要な gem のインストール

```
docker-compose build
```

`dataset.yaml`を編集してデータベースへ接続できるようにする

### リンターとフォーマッターの有効化

ruby で prettier を利用するのは難しく、npm でのインストールが必要であるため美しくない（個人の感想）（[prettier のインストール](https://questbeat.hatenablog.jp/entry/2021/03/03/132127)、[vscode の拡張機能 prettier だけじゃ足りない話](https://geniusium.hatenablog.com/entry/2021/03/13/074033)）ので、`rubcop`と言う gem を利用（[使い方](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)）。`settings.json`で ruby ファイルのみ ruby がフォーマットするように設定。

gem をリンター、フォーマッターとして利用するため vscode もコンテナ内の環境で動かす必要がある（ここが rails の好きじゃない点で gem がデフォでプロジェクト単位で管理されないのでマウントしても外部からは見えない）ため、remote container を利用（[参考](https://qiita.com/jjjkkkjjj/items/3b111e4768e740c5cd24)）

rubocop の設定ファイルは[このサイト](https://zenn.dev/noraworld/articles/vscode-rubocop)を参考に作成

## セットアップ

vscode の拡張機能`Remote Container`により web のコンテナの中に入れるので、コンテナ内でコーディングする。

注意

- コンテナ内に`devcontainer.json`で指定した拡張機能がインストールされていることを確認（適宜必要な拡張機能は足してください。[devcontainer.json への追記を忘れないように](devcontainer.json)）

コンテナ内からは以下のコマンドで開発モードでアプリを立ち上げ、0.0.0.0:3000 からアクセスできる。

```
rails s -b 0.0.0.0 -p 3000
```

コンテナ外からは以下のコマンドで動作確認できる。

```
docker compose up service
```

<!-- - System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ... -->
