#!/usr/bin/env bash
number=$(ls | wc -l)
function guess_num {
	while [[ 1 -eq 1 ]]
	do
		echo "Try to Guesshow many files there are:"
		read guess
		if [[ $guess -eq $number ]]
		then
			echo "Perfect!"
			echo "You have won!"
			echo "You guess the number correctly"
			echo "****************************************************"
			echo "Files in the directory are:-"
			echo "--------------------------------------"
			for f in $(ls)
			do
				echo "  + $f "
			done
			echo "****************************************************"
			break
		else
			if [[ $guess -lt $number ]]
			then
				echo "Too Less Please than you guess please try again: "
				echo "--------------------------------------"
			else
				echo "Too HIGH Please than you guess please try again: "
				echo "--------------------------------------"
			fi
		fi
	done
}
echo "****************************************************"
echo "Welcome to the Game"
echo "****************************************************"
echo "Please follow the given instructions to play the gane..."
echo "****************************************************"
echo "Are you ready to play the guessing game?"
echo "****************************************************"

guess_num
