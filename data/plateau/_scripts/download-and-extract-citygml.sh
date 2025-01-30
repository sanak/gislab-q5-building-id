#!/usr/bin/env bash

set -ex

SCRIPT_DIR=$(cd $(dirname $0); pwd)
BASE_DIR=$SCRIPT_DIR/../citygml

# https://www.geospatial.jp/ckan/dataset/plateau
###############################################################################
## 東京都都心部
# 2023年度 千代田区: https://www.geospatial.jp/ckan/dataset/plateau-13101-chiyoda-ku-2023
cd $BASE_DIR
mkdir -p 13100_tokyo/2023
cd 13100_tokyo/2023
CHIYODA_2023_ZIP_FNAME=13101_chiyoda-ku_city_2023_citygml_1_op.zip
wget https://assets.cms.plateau.reearth.io/assets/59/984b81-8516-4e13-a8f5-2ca24e272c3e/$CHIYODA_2023_ZIP_FNAME
unzip $CHIYODA_2023_ZIP_FNAME udx/bldg/53394600_bldg_6697_op.gml
unzip $CHIYODA_2023_ZIP_FNAME udx/bldg/53394601_bldg_6697_op.gml
unzip $CHIYODA_2023_ZIP_FNAME udx/bldg/53394610_bldg_6697_op.gml
unzip $CHIYODA_2023_ZIP_FNAME udx/bldg/53394611_bldg_6697_op.gml
mv udx/bldg/*.gml .
rm -rf udx
rm $CHIYODA_2023_ZIP_FNAME

# 2022年度 23区: https://www.geospatial.jp/ckan/dataset/plateau-tokyo23ku-2022
cd $BASE_DIR
mkdir -p 13100_tokyo/2022
cd 13100_tokyo/2022
TOKYO_2022_FNAME=13100_tokyo23-ku_2022_citygml_1_2_op
wget https://assets.cms.plateau.reearth.io/assets/74/b317b5-a7b0-426f-ba8b-af5f777c76c5/$TOKYO_2022_FNAME.zip
unzip $TOKYO_2022_FNAME.zip $TOKYO_2022_FNAME/udx/bldg/53394600_bldg_6697_2_op.gml
unzip $TOKYO_2022_FNAME.zip $TOKYO_2022_FNAME/udx/bldg/53394601_bldg_6697_2_op.gml
unzip $TOKYO_2022_FNAME.zip $TOKYO_2022_FNAME/udx/bldg/53394610_bldg_6697_2_op.gml
unzip $TOKYO_2022_FNAME.zip $TOKYO_2022_FNAME/udx/bldg/53394611_bldg_6697_2_op.gml
mv $TOKYO_2022_FNAME/udx/bldg/*.gml .
rm -rf $TOKYO_2022_FNAME
rm $TOKYO_2022_FNAME.zip
