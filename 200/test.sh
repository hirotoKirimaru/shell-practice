#!/bin/bash
echo -e "\e[31m赤色を指定"
echo "色を指定しない"
echo -e "\e[32m緑色を指定"
echo -e "\e[33m$(cat result.txt)\e[m"
result=************完了しました***************
echo -e "\e[33m$result\e[m"
echo -e "\e[33m$(echo $result)\e[m"
