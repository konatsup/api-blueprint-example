# API Blueprint Example

API Blueprint を使ってモックサーバとドキュメントを同時に生成するサンプルです。

## サンプルのデプロイ先

- ドキュメント: https://docs-api-blueprint-konatsup.netlify.app
- モックサーバ: https://mock-api-blueprint-konatsup.herokuapp.com

## 使用ツール

- [API Blueprint](https://apiblueprint.org) (記法、フォーマット)
- [aglio](https://github.com/danielgtaylor/aglio) (ドキュメント(HTML)生成)
- [dracov](https://github.com/Aconex/drakov) (モックサーバ作成)

## Make コマンドの説明

(詳しくは [Makefile](/Makefile)) 参照)

```
install: 環境構築

up: モック(:3000)のサーバを立てる

convert: ドキュメントを更新する

open: 生成されたHTMLをブラウザで開く

```

## 使い方

1. Nodejs をインストール
2. `make install`
3. input.apib を編集
4. `make convert` してドキュメントを生成
5. `make open` で生成されたドキュメントを開く
6. `make up`でモックサーバを立てる(:3000)

## curl の使い方

```
$ curl -X GET http://localhost:3000/example
$ curl -X POST http://localhost:3000/example -H 'Content-Type:application/json' -d '{"value":"hoge"}'
```

## Heroku へのデプロイ

```
$ heroku login
$ heroku create アプリ名
$ heroku container:login
$ heroku stack:set container
$ git push heroku main
```

## ファイルの説明

- public/index.html: 生成されたドキュメント
- Dockerfile: モックサーバを立てるための Dockerfile(主にデプロイ時に利用)
- heroku.yml: Heroku に Docker コンテナをデプロイするための設定ファイル
- Makefile: make コマンド集
- input.apib: API Blueprint 形式で仕様内容を記述するファイル
