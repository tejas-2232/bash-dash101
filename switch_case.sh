#!bin/bash

echo " choose an option from below"

echo " a = to see current date"
echo " b = to list all files in curred directory"
echo " c = your current location"

read choice

case $choice in
	 a) date;;
	 b) ls -lrt;;
	 c) pwd;;
	 *) echo "enter a valid input"
esac
