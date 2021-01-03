#!/bin/sh
while true
do 
	inotifywait -e modify report.tex chapters/*.tex appendices/*.tex bibliography/*.bib frontmatter/*.tex preamble/*.tex
	echo "Starting to compile..."
	make > /dev/null 2> /dev/null
	echo "Compilation done"
done
