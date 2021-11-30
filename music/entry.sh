#!/bin/bash

function line() {
	echo -en "$1"
	for i in $( seq 1 $(tput cols)); do
		echo -n "#"
	done
}

line

echo
echo
echo ' Welcome to the music container'
echo
echo ' youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 <youtube-url>'
echo

line

bash
