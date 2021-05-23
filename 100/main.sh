#!/bin/bash
<< COMMENTOUT
  第一パラメータを元に環境変数を呼び分ける
COMMENTOUT

shell_root_path=`dirname {0}`
env=$1
echo "環境："$env
source $shell_root_path/property/it.sh

echo "URL:"
echo $protocol://$ip:$port$base_path
