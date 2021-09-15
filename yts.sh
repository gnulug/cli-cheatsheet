#!/bin/bash

youtube-dl ytsearch$2:"$1" -j > /tmp/yt.txt
a=($(jq -r '.webpage_url' < /tmp/yt.txt))
jq '.title' < /tmp/yt.txt | cat -n
printf "Number: "
read k
IND=$((k-1))
if [[ $IND -ge 0 ]]; then
  echo ${a[$IND]}
  mpv ${a[$IND]}
else
  echo "Invalid number."
fi
