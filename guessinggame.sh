#!/usr/bin/env bash
# File: guessinggame.sh
# Part of a Unix course offered by Courera.org
# Prompts the user to guess the number of files in a directory.
# Provides hints as to whether the guess is too high or too low
# and exits when the correct number os guessed.

function rank_guess {
# Function that takes the user's guess and returns a value based on that.
# It determines the number of files in the directory and returns:
#	0 - User's guess matches the number of files
#	1 - User's guess is too high
#	-1 - User's guess is too low

	# get the number of files and set "result" variable
	local file_count=$(ls | wc -l)

	# compare with the user's guess
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

# Start by setting a boolean to control the loop
incorrect=true

# Loop until a correct answer is provided
while $incorrect
do
	# Print a blank line for readability then ask the user  for a guess
	echo
	echo "Guess how many files are in the current directory:"
	read file_count
	# get the  function to determine the "quality" of the guess
	rank_guess $file_count

	# Display the result
	if [[ $result -eq 0 ]]
	then
		echo "That's Right!"
		# In this case, set the flag so the while loop exits
		incorrect=false
	elif [[ $result -eq -1 ]]
	then
		echo "Sorry, that guess is too low."
	else
		echo "Sorry, that guess is too high."
	fi
done
