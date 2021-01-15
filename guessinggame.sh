#!/usr/bin/env bash
# File: guessinggame.sh
# Part of a Unix course offered by Courera.org
# Prompts the user to guess the number of files in a directory.
# Provides hints as to whether the guess is too high or too low
# and exits when the correct number os guessed.

function rank_guess {
	local file_count=$(ls | wc -l)

	if [[ $1 -eq $file_count ]]
	then
		result=0
	elif [[ $1 -lt $file_count ]]
	then
		result=-1
	else
		result=1
	fi
}


incorrect=true

while $incorrect
do
	echo
	echo "Guess how many files are in the current directory:"
	read file_count
	rank_guess $file_count

	if [[ $result -eq 0 ]]
	then
		echo "That's Right!"
		incorrect=false
	elif [[ $result -eq -1 ]]
	then
		echo "Sorry, that guess is too low."
	else
		echo "Sorry, that guess is too high."
	fi
done
