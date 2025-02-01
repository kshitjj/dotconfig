#! /usr/bin/bash

# variables
var=value

echo $var

# Expressions in bash
read -p "Number 1 " a
read -p "Number 2 " b

# if else elif fi
if [[ a -ge b ]]
then 
	echo "number 1 is greater"
elif [[ a -lt b ]]
then
	echo "number 2 is greater than 1"
fi
## expression involving fractions

echo "scale=2;22/7" | bc

## reading shit
read -p "What's your name? " name
echo "Hello ${name}"

# equality
# num1 -ge num2 greater than equal to
# num1 -gt num2 greater than only
# num1 -le num2 less than equal to
# num1 -lt num2 less than 
# num1 -eq num2 equal to
# num1 -ne num2 not equal to

# AND and OR
# -a AND
# -o OR

# looping
## for looping
for i in {${a}..${b}}
do 
	echo $i
done
## while looping
while [[ ${i} -le 10 ]]; do
	echo ${i}
	((i += 1))
done

# numberer
LINE=1

while read -r CURRENT_LINE
do
	echo "$LINE    $CURRENT_LINE"
	((LINE += 1))
done < "learn.sh"

# running commands in sh(the good stuff)

getDate=`date`
echo ${getDate}

# getting arguments
for x in $@
do
	echo "$x "
done
