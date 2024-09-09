#!/bin/bash


validate_age(){

    if [[! $age =~ ^[0-9]+$ ]]
    then
        echo "Invalid input, please try again."
        return 1
    elif (($age<18))
    then
        echo "You are not eligible."
        return 1
    else
        echo "You are eligible."
        return 0
    fi

}

echo "Please enter your age:"

read age

validate_age age

exit_code = $?

if [ $exit_code -nq 0 ]