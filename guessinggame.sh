#!/usr/bin/env bash

echo "How many files are in the current directory? Please enter your response"
    read guess
    number_of_files=$(ls -l | egrep '^-' -c)

while [[ 1 ]]
do

    if [[ $number_of_files -eq $guess ]]
    then
        echo "Compliments, you guessed the rigth number of files"
        exit
    elif [[ $number_of_files -lt $guess ]]
    then
        echo "In the directory there are less files. Try again:"
    else
        echo "In the directory there are more files. Try again:"
    fi

    read guess
    number_of_files=$(ls -l | egrep '^-' -c)

done

