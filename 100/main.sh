#/bin/sh

var1=あいうえお
echo "var1:"$var1
echo "パラメータ1:"$0
echo "パラメータ2:"$1

source `dirname {0}`/app_variable.sh

echo "別シェルの変数:"$another1