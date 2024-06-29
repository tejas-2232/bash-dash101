#!bin/bash
#

echo "Select operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read -p "Enter your choice (1-4): " choice

# Prompt user to enter two numbers
read -p "Enter first number: " num1
read -p "Enter second number: " num2

if [ "$choice" -eq 1]; then
	result=$(echo "$num1 + $num2" | bc)
	echo "Result : $result"
elif [ "$choice" -eq 2]; then
	result=$(echo "$num1 - $num2" | bc)
	echo "Result : $result"

elif [ "$choice" -eq 3]; then
	result=$(echo "$num1 * $num2" | bc)
	echo "Result : $result"

elif [ "$choice" -eq 4]; then
	if [ "$num2" -eq 0]; then
		echo "Error: can't divide the number by 0"
	else
		result=$(echo "$num1 / $num2" | bc)
		echo "Result : $result"
	fi
else
	echo "Invalid choice, select valid operation"
fi
