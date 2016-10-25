finder() {
	echo "Enter Directory: \n______________________________________ \n"
  read -a dir
  echo "______________________________________ \n"
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
	echo "Enter Directory: \n______________________________________ \n"
  read -a dir
  echo "______________________________________ \n"
  for i in "${dir[@]}"
  do
    echo $i # or do whatever with individual element of the array
		cd $i
		find . -iname '*.html' | while read line; do
			echo "Finding HTML: $line";
		done
  done
}

differ() {
	echo "Enter Directory: \n______________________________________ \n"
  read -a dir
  echo "______________________________________ \n"
  for i in "${dir[@]}"
  do
    echo $i # or do whatever with individual element of the array
		cd $i
		find . -iname "*.html" | xargs diff -ry --from-file * | colordiff;
  done
}

backpack() {
	echo "Enter Site to Scrape & Diff: \n______________________________________ \n"
  read -a sitelist
  echo "______________________________________ \n"
  for i in "${sitelist[@]}"
  do
    echo $i # or do whatever with individual element of the array
		waybackpack $i -d $i
  done
}

"$@"
