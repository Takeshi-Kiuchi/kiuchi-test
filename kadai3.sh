#!/bin/bash

num=$1

if [ -z $num ]; then
    echo "[ERROR]入力値が空です。"
elif expr $num : '[0-9]*' > /dev/null ; then
    flg=0
    if [ $num -lt 2 ] ; then
        flg=1
    else
        for ((i=2; i<$num; i++))
        do
            if [ $(($num % $i)) = 0 ] ; then
                flg=1
                break
            fi
        done
    fi
    
    if [ $flg = 0 ] ; then
        echo "[判定結果]素数です"
    else
        echo "[判定結果]素数ではありません"
    fi
else
    echo "[ERROR]入力値が正しくありません。"
fi
