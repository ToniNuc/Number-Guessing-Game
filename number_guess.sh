#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
NUMBER=$(($RANDOM % 1000 + 1))
echo $NUMBER
echo "Enter your username:"
read NAME
USERNAME=$($PSQL "SELECT username FROM users WHERE username='$NAME'")
if [[ $USERNAME ]]
then
  GP=$($PSQL "SELECT COUNT(game_id) FROM games JOIN users USING (user_id) WHERE username='$NAME'")
  BG=$($PSQL "SELECT MIN(guess_number) FROM games JOIN users USING (user_id) WHERE username='$NAME'")
  echo -e "Welcome back, $NAME! You have played $GP games, and your best game took $BG guesses."
else
  echo Welcome, $NAME! It looks like this is your first time here.
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES ('$NAME')")
fi
echo Guess the secret number between 1 and 1000:
read GUESS
GN=1
until [[ $GUESS == $NUMBER ]]
do
  if [[ $GUESS =~ ^[0-9]+$ ]]
  then
    if [[ $GUESS -gt $NUMBER ]]
    then
      echo "It's lower than that, guess again:"
      ((GN++))
      read GUESS
    else
      echo "It's higher than that, guess again:"
      ((GN++))
      read GUESS
    fi
  else
    echo "That is not an integer, guess again:"
    ((GN++))
    read GUESS
  fi
done
echo "You guessed it in $GN tries. The secret number was $NUMBER. Nice job!"
USERID=$($PSQL "SELECT user_id FROM users WHERE username='$NAME'")
INSERT_GAME=$($PSQL "INSERT INTO games(user_id, secret_number, guess_number) VALUES ($USERID, $NUMBER, $GN)")
