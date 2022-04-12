#!/bin/bash

# this script will create a new experiment folder

echo "Enter the number of the experiment you want to create"
read n
echo "Creating folder for exp-$n ..."

cd ..
mkdir exp-$n
cd exp-$n

mkdir data
touch data/experimental-data-1.csv
echo "data folder created!"

mkdir script
touch script/script.m
echo "script folder created!"

mkdir report
touch report/report.tex
echo "report folder created!"

mkdir img
# touch img/temp.png
echo "img folder created!"

touch README.md
echo "README.md created!"