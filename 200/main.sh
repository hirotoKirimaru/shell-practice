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