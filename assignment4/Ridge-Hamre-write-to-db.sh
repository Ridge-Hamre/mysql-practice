#!/bin/bash

# Set MySQL credentials
MYSQLUSER=root
MYSQLPASS=root
# Set variables
MYDATABASE=questionnaire
MYTABLE=tblquestions
# place data into MySQL directory
sudo cp ./tmp.csv /var/lib/mysql-files/
# Tell user that the data from the questionnaire has been stored into a MySQL directory
echo "Responses saved to secure directory."
# Create database
echo "Creating Database..."
mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "CREATE DATABASE $MYDATABASE"
# Create a table
echo "Creating table..."
mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "CREATE TABLE $MYTABLE (ID VARCHAR(255), Date TIMESTAMP, FIRSTNAME VARCHAR(255), AGE VARCHAR(255), STATEBORN VARCHAR(255), COLLEGE VARCHAR(255), FAVORITEWEBSITE VARCHAR(255)); ALTER TABLE $MYTABLE ADD PRIMARY KEY (ID);" $MYDATABASE
# Write data into database table from the csv file
echo "Recording responses into $MYTABLE in database $MYDATABASE."
mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "LOAD DATA INFILE '/var/lib/mysql-files/tmp.csv' INTO TABLE $MYTABLE FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"';" $MYDATABASE
# Remind the users that I am the captain now
echo "10"
echo "9"
echo "8"
echo "7"
echo "6"
echo "5"
echo "4"
echo "3"
echo "2"
echo "1"
echo "Houston we have lift off. Engage thrusters to max capacity."
# store current verison of database into export file
echo "Questionnaire saved and put in file `date --iso-8601`-$MYDATABASE.sql"
mysqldump -u"$MYSQLUSER" -p"$MYSQLPASS" $MYDATABASE > `date --iso-8601`-$MYDATABASE.sql
# remove /var/lib/mysql-files/tmp.csv so that the Questionnaire can be taken by a new user
sudo rm /var/lib/mysql-files/tmp.csv


