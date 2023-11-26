# plusコマンド
![test](https://github.com/Ryohei-Tsuchida/robosys2023/actions/workflows/test.yml/badge.svg)

# robosys2023
ロボットシステム学のプログラム

## プログラムの使い方
plus
標準入力から読み込んだ数字を足すプログラム。
小数,整数,負の数に対応しています。
bashに
seq 10 | ./plus  or  ./plus 1 2 3 4 5 6 7 8 9 10
と入力すると55.0が返却されます。


## 必要なソフトウェア
* Python
  * テスト済み: 3.7〜3.10

## テスト環境
* Ubuntu 20.04

* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Ryohei Tsuchida
