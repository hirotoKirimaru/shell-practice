#!/bin/bash
<< COMMENTOUT

COMMENTOUT

set -eu

# 現在の日時を表示
date

# 現在の日時をUTCで表示
date -u

# フォーマットは + で始まる書式で指定
date "+%Y%m%d-%H%M%S"

# 24時間後の日時を表示
date -d tomorrow

# -d の代わりに --date でも同じ
date --date tomorrow

# 30日後の日付を表示
date "+%Y/%m/%d" -d "30 days"

# 
date "+%Y%m%d%H%M%S"




