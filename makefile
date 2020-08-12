readme : guessinggame.sh
	touch README.md
	echo "# Title: The Guessing Game" > README.md
	echo "Number of lines in guessinggame.sh:">> README.md
	wc -l <  guessinggame.sh >> README.md
	echo "\nThe Date on make ran at: " >> README.md
	date >> README.md
