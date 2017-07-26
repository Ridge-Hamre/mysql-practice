#!/bin/bash
GHUSERNAME="Ridge-Hamre"
# 5 questions for user to answer
# Question 1
echo "What is your first name?"
read FIRSTNAME
# Question 2
echo "How old are you?"
read AGE
# Question 3
echo "What State were you born in?"
read STATEBORN
# Question 4
echo "Are you attending College?"
read COLLEGE
# Question 5
echo "What website do you spend the most time on?"
read FAVORITEWEBSITE

# get time/date of survey
TIMESTAMP=`date --iso-8601=seconds`
# Create unique identifier
IDENTIFIER="`echo $RANDOM$RANDOM$RANDOM | sha1sum | sed 's/[^0-9a-fA-F]//g' | sed -e 's/^/0x/'`"
# Write to tmp.csv file
echo "$INDENTIFIER, $TIMESTAMP, $FIRSTNAME, $AGE, $STATEBORN, $COLLEGE, $FAVORITEWEBSITE" > ./tmp.csv
# Read out the data from the csv file
cat ./tmp.csv
# write data into write-to-db.sh
bash ./$GHUSERNAME-write-to-db.sh
# Back up responses
cat ./tmp.csv >> data-backup.csv
#Remove tmp.csv so that new user may take questionnaire
rm tmp.csv