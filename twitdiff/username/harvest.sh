#!usr/bin/bash
  echo "Enter Users to Scrape & Diff: \n______________________________________ \n"
  read -a userlist
  echo "______________________________________ \n"
  for i in "${userlist[@]}"
  do
    echo $i # or do whatever with individual element of the array
    # t followers $i >> $i.txt
    python ../theHarvester/theHarvester.py -d $i -b all >> $i.txt

    sort -u $i.txt -o $i.out.txt  # sort uniques in followers file and append to the out file
    # sort -d $i.out.txt # now sort the out file for the unique uniques -- because values are being appended

    sort -d $i.txt -o $i.diff.txt # sort duplicates into file for diff'ing
    sort -u $i.diff.txt -o $i.diff.txt  # sort uniques in diff folder for ??? I'll figure it out...

    # colordiff $i.txt $i.diff.txt
    diff -a --old-group-format=$'\e[0;31m%<\e[0m' \
     --new-group-format=$'\e[0;31m%>\e[0m' \
     --unchanged-group-format=$'\e[0;32m%=\e[0m' \
     $i.out.txt $i.diff.txt > $i.final.txt
     cat $i.final.txt
    # watch -n 20 'bash -c "diff <(sort -u '$i.txt' -o '$i.txt') '$i.txt'"'
    # watch -n 20 'bash -c "cut -d '' -f1 '$i.txt' | uniq -d"'
  done
  # cd "$userlist" && atom . && gulp
