#!/bin/bash
<< COMMENTOUT
  共通メソッドを用意してみる
COMMENTOUT

function setting(){
  # エラーが起きたらその時点で止める（eはexit0以外が発生したら。uは使用していない変数を定義したら）
  set -eu
}

function echoTest(){
  echo "呼び出す"
}

