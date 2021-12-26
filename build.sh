cd source
make

# エンジンをbinフォルダに移動
mkdir -p ../bin
mv YaneuraOu-by-gcc ../bin/

# 評価関数HalfKPE9をダウンロード, 解凍
wget https://github.com/tttak/YaneuraOu/releases/download/V4.89_NNUE-HalfKPE9/NNUE-HalfKPE9.zip
unzip NNUE-HalfKPE9.zip

# 評価関数をevalフォルダに移動
mkdir -p /content/YaneuraOu/bin/eval
!cp -pr /content/NNUE-HalfKPE9/nn.bin /content/YaneuraOu/bin/eval

