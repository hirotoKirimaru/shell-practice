#!/bin/bash
<< COMMENTOUT
  色付けとtry-catch-finallyを学ぶためのシェル
COMMENTOUT

set -eu

trap errorMessage EXIT

function errorMessage {
    echo -e "$red_font_color
*************処理に失敗しました*****************
\e[m"
}

red_font_color="\e[31m"
green_font_color="\e[32m"
echo -e "$red_font_color
1
\e[m"

echo "2"

echo -e "$green_font_color
3
\e[m"

# exit 1

echo -e "$green_font_color
*************処理に成功しました*****************
\e[m"

# exit 0

# trap 'echo -e "$red_font_color
# *************処理に失敗しました*****************
# \e[m"' EXIT

# exit 1



echo -e "\e[41m
4
\e[m"

echo -e "\e[43m
5
\e[m"

echo 6







# 付加属性
# 文字色と背景色を同時に指定したい場合には、値を「;」で区切ります。また文字色・背景色の他に以下の属性を付加することが出来ます。
# 属性番号	attributes	属性
# 　　1	bold	太字
# 　　2	low intensity	弱強調
# 　　4	underline	下線
# 　　5	blink	点滅
# 　　7	ｒeverse video	反転
# 　　8	invisible text	非表示

echo -e "\e[31;1mBold\e[m"
echo -e "\e[31;2mlow intensity\e[m"
echo -e "\e[31;4mUnderline\e[m"
echo -e "\e[31;5mBlink\e[m"
echo -e "\e[31;7mReverseVideo\e[m"
echo -e "\e[31;8minbisible text\e[m"

# ---
# 以降は参考にしているサイトの
# http://site.m-bsys.com/linux/echo-color-1


# echoの装飾用
ESC="\e["
ESCEND=m
COLOR_OFF=${ESC}${ESCEND}

# echoBlank() {
# 	# echo "" | tee -a ${LOG}
# }

# echoNomal() {
# 	# echo "${1}" | tee -a ${LOG}
# }

echoComment() {
	# 文字色：Black Bold(灰色)
	echo -en "${ESC}30;1${ESCEND}"
	echo "${1}"
	echo -en "${COLOR_OFF}"
}

echoAlert() {
	# 文字色：Red
	echo -en "${ESC}31${ESCEND}"
	echo "${1}"
	echo -en "${COLOR_OFF}"
}
echoImportant() {
	# 文字色：Yellow
	echo -en "${ESC}33${ESCEND}"
	echo "${1}"
	echo -en "${COLOR_OFF}"
}

# echoNomal あいうえお
echoComment あいうえお
echoAlert あいうえお
echoImportant あいうえお
