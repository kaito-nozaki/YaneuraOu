#!/bin/bash
cd source
make

# pathの指定 (デフォルトはbinフォルダ)
path=$1
if [ -z "$path" ]
then
  path="/content/YaneuraOu/bin"
fi

# エンジンをpathフォルダに移動
mkdir -p "$path"
mv YaneuraOu-by-gcc "$path"

# 一旦contentへ
cd /content

# 評価関数HalfKPE9をダウンロード, 解凍
wget https://github.com/tttak/YaneuraOu/releases/download/V4.89_NNUE-HalfKPE9/NNUE-HalfKPE9.zip
unzip NNUE-HalfKPE9.zip

# 評価関数をevalフォルダに移動
mkdir -p "$path"/eval
cp -pr /content/NNUE-HalfKPE9/nn.bin "$path"/eval
