# robosys2023
![test](https://github.com/Ryohei-Tsuchida/robosys2023/actions/workflows/test.yml/badge.svg)

plus

標準入力から読み込んだ数字を足すプログラム。  
小数,整数,負の数の足し算をすることができ、丸め誤差にも対応しています。

## プログラムの使い方
```bash
seq 10 | ./plus  or  ./plus 1 2 6 8 10 3 7 4 9 5
55
seq -5 0.5 1.5 | ./plus  or  ./plus 5 -4.5 6 -10 -3 -7 -4 -7
-24.5
```

## 必要なソフトウェア
* Python
  * テスト済み: 3.7〜3.10

## テスト環境
* Ubuntu 20.04

## 著作権・ライセンス
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージのコードの一部は，下記のplusのコード（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
	* [ryuichiueda/robosys2023](https://github.com/ryuichiueda/robosys2023)  
* © 2023 Ryohei Tsuchida
