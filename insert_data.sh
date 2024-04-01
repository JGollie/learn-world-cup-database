#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
# get winning teams name from CSV
  if [[ $WINNER != name ]]
  then
    # get winner ID    
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name ='$WINNER'")    
    
    # if not found 
    if [[ -z $WINNER_ID ]]
    then
    INSERT_TEAM_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $WINNER_ID == 'INSERT O 1' ]] 
      then
        echo -e "\nInserted into teams: '$WINNER'"
      fi
    fi
  fi
# get losing teams name from CSV
  if [[ $OPPONENT != name ]]
  then
    # get opponent ID
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name ='$OPPONENT'")
    
    # if not found
    if [[ -z $OPPONENT_ID ]]
    then 
    INSERT_OPPONENT_ID=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $OPPONENT == 'INSERT 0 1' ]]
      then 
        echo -e "\nInserted into teams: '$OPPONENT'"
      fi
    fi
  fi
done
# get game information from CSV