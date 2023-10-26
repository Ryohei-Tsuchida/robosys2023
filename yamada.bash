#!/bin/bash

ng () {
	echo ${1}行目が違うよ
	ret=1
}

ret=0
a=山田リョウ
[ "$a" = 土田リョウ ] || ng "$LINENO"
[ "$a" = 山田リョウ ] || ng "$LINENO"

exit $ret
