#!/bin/bash -x

echo "Welcome to Sorting Arithmetic Computation Problem"

#Use Case 1 (Taking User Inputs)

#read -p "Enter the value of a: " a
#read -p "Enter the value of b: " b
#read -p "Enter the value of c: " c





#Use Case 2 (Compute ( a + b * c ))

#read -p "Enter the value of a: " a
#read -p "Enter the value of b: " b
#read -p "Enter the value of c: " c
#
##Compute ( a + b * c )
#
#expr1=`awk "BEGIN {print $a + ( $b * $c)}"`
#echo "a+b*c="$expr1





#Use Case 3 (Compute ( a * b + c ))

#read -p "Enter the value of a: " a
#read -p "Enter the value of b: " b
#read -p "Enter the value of c: " c
#
##Compute ( a * b + c )
#
#expr2=`awk "BEGIN {print ($a * $b) + $c}"`
#echo "a*b+c="$expr2





#Use Case 4 (Compute ( c + a / b ))

read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c

#Compute ( c + a / b )

expr3=`awk "BEGIN {print $c + ($a / $b)}"`
echo "c+a/b="$expr3
