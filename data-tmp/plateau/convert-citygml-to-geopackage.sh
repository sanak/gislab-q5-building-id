#!/usr/bin/env bash

set -ex

SCRIPT_DIR=$(cd $(dirname $0); pwd)
BASE_DIR=$SCRIPT_DIR

cd $BASE_DIR

###############################################################################
## 東京都都心部
for year in 2023 2022; do
  is_first=true
  for citygml in citygml/13100_tokyo/$year/*.gml; do
    append_option=""
    if $is_first; then
      is_first=false
    else
      append_option="-append"
    fi
    # CityGML => GeoPackage
    ogr2ogr $append_option -f GPKG -dim 2 \
      -oo GFS_TEMPLATE=citygml/bldg_lod0_roof_edge.gfs \
      -t_srs EPSG:4326 geopackage/13100_tokyo_$year.gpkg \
      -s_srs EPSG:6697 $citygml
  done
done
