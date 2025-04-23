#!/bin/bash


#check if there is input file name/path

if [ $# -eq 0 ]; then
	echo " You did not enter the file name"
	exit 1
fi

log_file=$1

#check if the file exists
if [ ! -f "$log_file" ]; then
	echo "The file does not exist"
	exit 2
fi


read -p "Enter the word" input_word

word_counts=$(grep "$input_word" "$log_file" | wc -w)

echo " Numbers of word ""$input_word"" is: $word_counts"





