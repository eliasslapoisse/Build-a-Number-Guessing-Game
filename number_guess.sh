#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME';")

if [[ -z $USER_ID ]]
then
	echo "Welcome, $USERNAME! It looks like this is your first time here."

	INSERT_USER=$($PSQL "INSERT INTO users(name) VALUES ('$USERNAME');")
	USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME';")
else
	GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id = $USER_ID;")
	BEST_GAME=$($PSQL "SELECT COALESCE(MIN(number_of_guesses), 0) FROM games WHERE user_id = $USER_ID;")

	echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

NUMBER_TO_GUESS=$(( RANDOM % 1000 + 1 ))
COUNT=0

echo "Guess the secret number between 1 and 1000:"

while true
do
	read GUESS

	if [[ ! $GUESS =~ ^[0-9]+$ ]]
	then
		echo "That is not an integer, guess again:"
		continue
	fi

	((COUNT++))

	if [[ $GUESS -lt $NUMBER_TO_GUESS ]]
	then
		echo "It's higher than that, guess again:"
	elif [[ $GUESS -gt $NUMBER_TO_GUESS ]]
	then
		echo "It's lower than that, guess again:"
	else
		break
	fi
done

INSERT_GAME=$($PSQL "INSERT INTO games(number_of_guesses, user_id) VALUES ($COUNT, $USER_ID);")

echo "You guessed it in $COUNT tries. The secret number was $NUMBER_TO_GUESS. Nice job!"