#!/bin/bash
<< COMMENTOUT
  第一パラメータを元に環境変数を呼び分ける
COMMENTOUT

shell_root_path=`dirname {0}`
env=$1

# エラーが起きたらその時点で止める（eはexit0以外が発生したら。uは使用していない変数を定義したら）
set -eu

if [ -z "$env" ]; then
  echo "パラメータは必須です。"
  echo "例)"
  echo "./main.sh it"
  exit 1
fi

echo "環境："$env
source $shell_root_path/property/$env.sh

echo "URL:"
echo $protocol://$ip:$port$base_path
