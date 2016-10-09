#!usr/local/bin/bash
  echo "Enter Users to Scrape & Diff: \n______________________________________ \n"
  read -a userlist
  echo "______________________________________ \n"
  for i in "${userlist[@]}"
  do
    echo $i # or do whatever with individual element of the array
    t followers $i >> $i.txt
    sort -d $i.txt -o $i.diff.txt
    sort -u $i.diff.txt -o $i.diff.txt
    sort -u $i.txt -o $i.txt
    # colordiff $i.txt $i.diff.txt
    diff --old-group-format=$'\e[0;31m%<\e[0m' \
     --new-group-format=$'\e[0;31m%>\e[0m' \
     --unchanged-group-format=$'\e[0;32m%=\e[0m' \
     $i.txt $i.diff.txt
    # watch -n 20 'bash -c "diff <(sort -u '$i.txt' -o '$i.txt') '$i.txt'"'
    # watch -n 20 'bash -c "cut -d '' -f1 '$i.txt' | uniq -d"'
  done
  # cd "$userlist" && atom . && gulp
