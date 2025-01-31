# PLATEAUのLOD0データ変換

東京都の2023年度千代田区、2022年度23区データについて、
東京駅を含む以下の3次メッシュ4区画分を対象エリアとします。
* 3次メッシュ対象エリア:
  * 53394600
  * 53394601
  * 53394610
  * 53394611

## 変換手順

1. `data-tmp/plateau` フォルダまで移動
    ```bash
    cd data-tmp/plateau
    ```
2. PLATEAUのCityGMLデータのダウンロードと3次メッシュ4区画分を抽出
    ```bash
    bash download-and-extract-citygml.sh
    ```
3. CityGMLのLOD0データをGeoPackageファイルに変換
    ```bash
    bash convert-citygml-to-geopackage.sh
    ```

## 参考リンク:

* [CityGMLをGDALで2D GISデータに変換する #PLATEAU - Qiita](https://qiita.com/tkhrmeme/items/bdacd335494c125f3496)
* [GeoPackageの使い方（ベクトルデータ編）](https://zenn.dev/akioz/articles/659c866710e4bf)
