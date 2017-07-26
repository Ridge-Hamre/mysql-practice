# Task #4 - Creating and handling data

This assignment aims at strengthening our scripting skills and learning how to create a well-formed dataset to work with. 

You will create a short questionnaire and then use Bash to script collection of answers.

## Skillsets

You will be exposed to the following skillsets;

1. Scripting user input
2. Saving data to csv file
3. Writing to temporary files
4. Scripting database interface

## Expectations

I expect you to create two scripts 
1. One that will take input from users and then store their responses to a CSV file. It must aggregate the responses of multiple users and therefore needs to have some form of disambiguation involved in the data generation process. 
2. A second script that will allow you to write the information gathered into a MySQL database instead of into a CSV file as the final output form. 

## Prerequisites

The only thing that you will need is Bash and text files, and MySQL, all of which are available in CodeAnywhere (you can actually use the MySQL stack to start your project).

## Instructions

You will need to do the following for this assignment to be considered complete. 

1. Fork this repository: https://github.com/inls161/task-4-data
2. Rename it as YOURGITHUBUSERNAME-data (or something similar).
2. Clone it to your CodeAnywhere container.
1. Create a list of five questions.
2. Write a script that will do the following:
  - Ask each question of the user running the script.
  - Write a random string of characters to a variable as a unique identifier.
  - Write the datestamp to a variable.
  - Accept text input from the user and write each answer as a variable.
  - Save all answers and other data to a CSV file.
3. Create a database that has the appropriate variables and variable types (NB: You can script this: it might be an accessory script or a conditional statement in your script).
4. Write a script to write your data into a MySQL database (you can call this script from your other one, or vice versa):
  - connect to a MySQL database (HINT: this will involve setting variables for MySQL USERNAME, PASSWORD, and LOCATION)
  - enter the data input by users into a MySQL database 
  - dump the MySQL database into a .sql file in your repository directory with the rest of your files after it has been modified with new data
5. Write a blog post that links to your fork of the repository and write a brief explanation of what your scripts actually do. 
