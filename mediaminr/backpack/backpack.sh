help() {
	echo "\n"
	echo "\n"
	echo " backpack.sh - website capture and differencer"
	echo " _____________________________________________"
  echo " "
  echo " sh backpack [options], i.e. sh backpack.sh crawler"
  echo " "
  echo " options:"
	echo " "
  echo " crawler	crawl archive for site"
  echo " finder   	find crawled HTML folders"
	echo " opener		open crawled HTML folders in browser"
	echo " differ		find differences in crawled HTML"
	echo " cleaner	remove crawled HTML"
	echo "\n"
	echo "\n"
	exit 0
}



finder() {
	echo " "
	echo "Enter directory:"
	echo "_____________________________________________"
	echo " "
  read -a dir
  echo "_____________________________________________"
	echo " "
  for i in "${dir[@]}"
  do
    echo $i # or do whatever with individual element of the array
		cd $i
		find . -iname '*.html' | while read line; do
			echo "Finding HTML: $line";
		done
  done
}

opener() {
	echo " "
	echo "Enter directory:"
	echo "_____________________________________________"
	echo " "
  read -a dir
  echo "_____________________________________________"
	echo " "
  for i in "${dir[@]}"
  do
    echo $i # or do whatever with individual element of the array
		cd $i
		find . -iname '*.html' | while read line; do
			echo "Finding HTML: $line";
			open $line
		done
  done
}

differ() {
	# find . -iname '*.html' | xargs diff -ry --from-file * | colordiff
	echo " "
	echo "Enter directory:"
	echo "_____________________________________________"
	echo " "
  read -e dirp
  echo "_____________________________________________"
	echo " "
  # for i in "${dirp[@]}"
  # do
    echo $dirp # or do whatever with individual element of the array
		cd $dirp
		htmlarray=($(find . -iname '*.html'))
		length=${#htmlarray[*]}
		echo "${htmlarray[0]}"
		echo "${htmlarray[$(( $length-1 ))]}"
		# colordiff -bur --from-file ${htmlarray[0]} ${htmlarray[1]} ${htmlarray[$(( $length-1 ))]}
		colordiff -bur --from-file ${htmlarray[0]} ${htmlarray[$(( $length-1 ))]}
		# find . -iname '*.html' | xargs diff -ry --from-file * | colordiff
		# find . -iname '*.html' | while read line1 <&5; do
    #   read line2 <&5
    #   read line3 <&5
    #   read line4 <&5
		#
    #   echo "Four lines: $line1 $line2 $line3 $line4"
		# done
  # done

}

crawler() {
	echo " "
	echo "Enter websites:"
	echo "_____________________________________________"
	echo " "
  read -a sitelist
	echo "_____________________________________________"
	echo " "
	for i in "${sitelist[@]}"
  do
    echo $i # or do whatever with individual element of the array
		waybackpack $i -d $i
  done
}

cleaner() {
	echo " "
	echo "Removing crawled data"
	echo "_____________________________________________"
	find . ! -name 'backpack.sh' -type d -exec rm -r {} +
	exit 0
}

"$@"
