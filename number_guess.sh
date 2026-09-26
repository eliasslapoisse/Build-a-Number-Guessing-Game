#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME';")

if [[ -z $USER_ID ]]
then
	echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."

	INSERT_USER=$($PSQL "INSERT INTO users(name) VALUES ('$USERNAME');")
	USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME';")
else
	GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id = $USER_ID;")
	BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id = $USER_ID;")

	echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

MAIN_FUNC() {
	NUMBER_TO_GUESS=$(( RANDOM % 1000 + 1 ))

	until [[ $GUESS -eq $NUMBER_TO_GUESS ]]
	do
		echo -e "\nGuess the secret number between 1 and 1000:"
		read GUESS

		if [[ ! $GUESS =~ ^[[0-9]]+$ ]]
		then

		fi			
	done
}
