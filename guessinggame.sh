#!/usr/bin/env bash

function play_game {
  # The answer must be the number of lines in the provided file.
	answer=$(ls -l | wc -l)
	let answer=$answer-1
	correct=0
  while [[ $correct -eq 0 ]]
	do
		echo "How many files are in this directory?"
        	read response
	        echo "You entered: $response"
    # If the user-provided response is actually the answer, return a string that says "Congrats!"
    # If it is less than the answer, say "That is too low"
    # Otherwise, it must be larger than the answer, so say "That is too high"
		if [[ $response -eq $answer ]]
		then
			echo "You are correct! Congratulations"
			correct=1
		elif [[ $response -lt $answer ]]
		then
			echo "That is too low, try again."
		else
			echo "That is too high, try again."
		fi
	done
}
# Running the program
echo "Start of the guessing game"
play_game
echo "End of program"
