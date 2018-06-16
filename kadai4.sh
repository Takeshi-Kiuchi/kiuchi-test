#!/bin/bash

result_args=$(./kadai3.sh)
result_not_num=$(./kadai3.sh a)
result_minus_num=$(./kadai3.sh -1)
result_not_prime_num=$(./kadai3.sh 4)
result_prime_num=$(./kadai3.sh 3)

#引数有無
#echo "引数無 >" $result_args
if [ $result_args != "[ERROR]入力値が空です。" ] ; then
  exit 1
fi

##数値以外
#echo "数値以外 >" $result_not_num
if [ $result_not_num != "[ERROR]入力値が正しくありません。" ] ; then
  exit 1
fi

#負数
#echo "負数 >" $result_minus_num
if [ $result_minus_num != "[ERROR]入力値が正しくありません。" ] ; then
  exit 1
fi

#数値(素数以外)
#echo "数値(素数以外) >" $result_not_prime_num
if [ $result_not_prime_num != "[判定結果]素数ではありません" ] ; then
  exit 1
fi

#数値(素数)
#echo "数値(素数) >" $result_prime_num
if [ $result_prime_num != "[判定結果]素数です" ] ; then
  exit 1
fi

exit 0

