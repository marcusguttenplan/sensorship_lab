

finder() {
	find . -iname '*.html' | while read line; do
		echo "Finding HTML: $line";
#		open "$line"
	done
}

opener() {
	find . -iname '*.html' | while read line; do
		# echo "Finding HTML and opening $line";
		open "$line"
	done
}

differ() {
	find . -iname "*.html" | xargs diff -ry --from-file * | colordiff;
}

"$@"
