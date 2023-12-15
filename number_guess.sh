#!/bin/bash
PSQL=("psql --username=freecodecamp --dbname=number_guess -t --no-align -c")
NUMBER_TO_GUESS=$((1 + RANDOM % 1000))
GUESSES=1
echo "Enter your username:"
read NAME
BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$NAME'")
GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$NAME'")
if [[ -z $BEST_GAME ]]
then
  echo "Welcome, $NAME! It looks like this is your first time here."
else
  echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
echo "Guess the secret number between 1 and 1000:"
NUMBER_GUESSED=0
while [[ $NUMBER_GUESSED != $NUMBER_TO_GUESS ]]
do
  read NUMBER_GUESSED
  if ! [[ $NUMBER_GUESSED =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  elif [[ $NUMBER_GUESSED > $NUMBER_TO_GUESS ]]
  then
    echo "It's lower than that, guess again:"
    GUESSES=$((GUESSES + 1))
  elif [[ $NUMBER_GUESSED < $NUMBER_TO_GUESS ]]
  then
    echo "It's higher than that, guess again:"
    GUESSES=$((GUESSES + 1))
  fi
  
done
#if user is new
if [[ -z $BEST_GAME ]]
then
  ADD_USER=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$NAME', 1, $GUESSES)")
else
  UPDATE_USER=$($PSQL "UPDATE users SET games_played=games_played+1 WHERE username='$NAME'")
  if [[ $GUESSES < $BEST_GAME ]]
  then
    UPDATE_HIGHSCORE=$($PSQL "UPDATE users SET best_game=$GUESSES WHERE username='$NAME'")
  fi
fi
echo "You guessed it in $GUESSES tries. The secret number was $NUMBER_TO_GUESS. Nice job!"
#2
