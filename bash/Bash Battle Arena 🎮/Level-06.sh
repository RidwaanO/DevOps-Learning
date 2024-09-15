#!/bin/bash

lines_in_a_file(){
    if [ $# == 0 ]
    then
        echo "No file provided"
        return 1
    fi
    local file=$1
    local no_lines

    no_lines=$( cat $1 | wc -l )
    echo "the number of lines in this $1 is $no_lines"
}

lines_in_a_file $1