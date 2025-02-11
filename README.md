# 地理空間情報課ラボ - Q5 建物へのIDの付番 のアイデア

## 概要

地理空間情報課ラボのGeoSynergy Linkage Hub (https://www.mlit-gis-lab.jp/idea) のお題5「建物へのIDの付番」のアイデアを提案するためのリポジトリです。

## Webサイト

https://sanak.github.io/gislab-q5-building-id/

## 開発関連

開発環境はmacOS+Homebrewを想定

### インストール

```sh
brew install poetry
```

```sh
cd /path/to/gislab-q5-building-id
poetry install
```

### Jupyter Labの起動

```sh
poetry run jupyter lab
```

終了時はターミナルでCtrl+Cキーを押下後、`y` を入力してEnterキーを押下

### MkDocsの開発サーバ起動・ビルド・デプロイ

#### 開発サーバ起動

```sh
poetry run mkdocs serve
```

起動後、ブラウザから http://127.0.0.1:8000/gislab-q5-building-id/ にアクセス

終了時はターミナルでCtrl+Cキーを押下

#### ビルド

```sh
poetry run mkdocs build
```

ビルド後、 `site` フォルダの内容を確認

#### デプロイ

mainブランチに変更をコミット後に、以下を実行

```sh
poetry run mkdocs gh-deploy
```

## データ変換

[data-tmp/README.md](data-tmp/README.md) を参照

## ライセンス

* データ: CC BY 4.0
  * PLATEAU利用規約に従います
* データ以外のコンテンツ: MIT License
  * ただし、リンク先のコンテンツに関しては、リンク先のライセンスに従います
