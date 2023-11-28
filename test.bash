#!/bin/bash
# SPDX-FileCopyrightText: 2023 Ryohei Tsuchida
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(seq -5 1 0 | ./plus)
[ "${out}" = -15 ] || ng ${LINENO}

out=$(seq -5 0.5 1.5 | ./plus)
[ "${out}" = -24.5 ] || ng ${LINENO}

out=$(./plus 7 8 3 6)
[ "${out}" = 24 ] || ng ${LINENO}

out=$(./plus 1 -3.3 2 -5.5 6 -4 -10 8 9 -7)
[ "${out}" = -3.8 ] || ng ${LINENO}

out=$(./plus 1 -3.3 2 -5.5 6 4 -10 8 9 -7)
[ "${out}" = 4.2 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]        || ng ${LINENO}
[ "${out}" = "" ]   || ng ${LINENO}

out=$(echo | ./plus)
[ "$?" = 1 ]        || ng ${LINENO}
[ "${out}" = "" ]   || ng ${LINENO}

out=$(echo a | ./plus)
[ "$?" = 1 ]        || ng ${LINENO}
[ "${out}" = "" ]   || ng ${LINENO}

[ "${res}" = 0 ] && echo OK
exit $res
