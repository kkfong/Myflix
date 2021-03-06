#! /bin/bash

if [ "$#" -ne 1 ]; then
	echo "${0}: usage: buildHtmls.sh (1 for movies | 2 for tv shows | 3 for both )"
	exit 1
fi

cd "$(dirname "$0")"
TVpath=../TV/;
MoviesPath=../Movies/;
. config.cfg

case "${1}" in
	"1")	#build only movies
		./bMhtml.sh;;
	"2") 	#build only tv shows
		./bTVhtml.sh;;
	"3")	#build everything
		./bMhtml.sh
		./bTVhtml.sh;;
	*)
		echo "Invalid input, use: #1 for only movies, #2 for only tv shows and #3 for both";;
esac
echo "Done building HTMLs"
