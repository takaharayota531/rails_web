# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

## 開発環境

- Ruby 3.1.2
- rails 7.0.4.2
- postgres 14.5

## 初期構築ログ

参考：[docker 公式ドキュメント](https://docs.docker.jp/compose/rails.html)

まずは Dockerfile、docker-compose.yaml、Gemfile、Gemfile.lock ファイルを作成し、以下のコマンドでプロジェクトの初期立ち上げ

注意点

- rails6 以降は webpack が必要なので yarn もインストール（[参考](https://qiita.com/NaokiIshimura/items/8203f74f8dfd5f6b87a0)）
- Nokogiri でエラーが出るので`bundle config set force_ruby_platform true`が必要（[参考](https://qiita.com/ohakutsu/items/4d14bee46da26f55a9be)、[原因](https://matsu.teraren.com/blog/2022/04/26/docker-m1-arm-glibc-error-on-nokogiri/)）
- [今回は遭遇しなかったが没にした環境構築で発生した sass のエラー](https://qiita.com/tochisuke221/items/e50103275906c5a0ddf3)

```
docker-compose run web rails new . --force --database=postgresql
```

必要な gem のインストール

```
docker-compose build
```

`dataset.yaml`を編集してデータベースへ接続できるようにする

## セットアップ

以下のコマンドで`0.0.0.0:3000`で開発モードでアプリが立ち上がる

```
docker-compose up
```

<!-- - System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ... -->
