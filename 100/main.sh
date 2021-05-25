#!/bin/bash
<< COMMENTOUT
  第一パラメータを元に環境変数を呼び分ける
COMMENTOUT

shell_root_path=`dirname {0}`
env=$1

# 共通的なメソッドを呼び出す
source $shell_root_path/common.sh

setting
echoTest

if [ -z "$env" ]; then
  echo "パラメータは必須です。"
  echo "例)"
  echo "./main.sh it"
  exit 1
fi

# 共通的な変数を呼び出す
echo "環境："$env
source $shell_root_path/property/$env.sh

echo "URL:"
echo $protocol://$ip:$port$base_path
