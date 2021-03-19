#!/bin/sh

DATE=`date '+%Y%m%d%H%M%S'`
workdir="${HOME}/$DATE"
datadir="${HOME}/setup_testnet_data"

mkdir -p $workdir 2>/dev/null
cp $datadir/my-preset-testnet.yml $workdir/my-preset.yml

cd $workdir
symbol-bootstrap config -p testnet -a dual -c my-preset.yml 
symbol-bootstrap compose

# https://qiita.com/ryosasa/items/7313fc7d86c30e9c5d8f
# wget https://symbol-archives.s3-ap-northeast-1.amazonaws.com/archives/data.tar.gz
# tar zxvf data.tar.gz
# wget https://symbol-archives.s3-ap-northeast-1.amazonaws.com/archives/databases.tar.gz
# tar zxvf databases.tar.gz

# cp -ipr $datadir/databases $workdir/target
# cp -ipr $datadir/data/*  $workdir/target/nodes/api-node/data
