# API Blueprint Example

API Blueprint を使ってモックサーバとドキュメントを同時に生成するサンプルです。

## サンプルのデプロイ先

- ドキュメント:
- モック:

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
