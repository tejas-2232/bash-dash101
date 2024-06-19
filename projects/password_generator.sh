#!bin/bash

#this is small project on random password generator 


echo "welcome to password generator"

sleep 2

echo "please enter length of password"
read pass_length  # read user input in this variable

for p in $(seq 1); # 1 is written as we want password length of 1 line
do
	openssl rand -base64 48 | cut -c1-$pass_length
done

#base64 is for encoding
#c1 is column 1
