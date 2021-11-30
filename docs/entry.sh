#!/bin/bash

function line() {
	echo -en "$1"
	for i in $( seq 1 $(tput cols)); do
		echo -n "#"
	done
}

echo

line

echo
echo
echo ' Welcome to the docs container'
echo ' - pandoc'
echo ' - mkdocs'
echo
echo

line

bash
