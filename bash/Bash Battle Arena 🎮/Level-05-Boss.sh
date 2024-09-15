#!/bin/bash

mkdir Battlefield

touch ./Battlefield/knight.txt
touch ./Battlefield/sorcerer.txt
touch ./Battlefield/rogue.txt

if [ -e ./Battlefield/knight.txt ]
then
    mkdir Archive
    mv ./Battlefield/knight.txt ./Archive/
fi

ls Battlefield
ls Archive
