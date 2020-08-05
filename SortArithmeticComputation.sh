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

#read -p "Enter the value of a: " a
#read -p "Enter the value of b: " b
#read -p "Enter the value of c: " c
#
##Compute ( c + a / b )
#
#expr3=`awk "BEGIN {print $c + ($a / $b)}"`
#echo "c+a/b="$expr3





#Use Case 5 (Compute ( a % b + c ))

#read -p "Enter the value of a: " a
#read -p "Enter the value of b: " b
#read -p "Enter the value of c: " c
#
##Compute ( a % b + c )
#
#expr4=`awk "BEGIN {print ($a % $b) + $c}"`
#echo "a%b+c="$expr4





#Use Case 6 (Storing the results into dictionary)

#declare -A expr_result
#
#read -p "Enter the value of a: " a
#read -p "Enter the value of b: " b
#read -p "Enter the value of c: " c
#
#
#
##Compute ( a + b * c )
#
#expr1=`awk "BEGIN {print $a + ( $b * $c)}"`
#echo "a+b*c="$expr1
#
#
##Compute ( a * b + c )
#
#expr2=`awk "BEGIN {print ($a * $b) + $c}"`
#echo "a*b+c="$expr2
#
#
##Compute ( c + a / b )
#
#expr3=`awk "BEGIN {print $c + ($a / $b)}"`
#echo "c+a/b="$expr3
#
#
##Compute ( a % b + c )
#
#expr4=`awk "BEGIN {print ($a % $b) + $c}"`
#echo "a%b+c="$expr4
#
#echo "        "
#
#expr_result[a+b*c]=$expr1
#expr_result[a*b+c]=$expr2
#expr_result[c+a/b]=$expr3
#expr_result[a%b+c]=$expr4
#
#echo "Computed Dictionary:"
#
#for i in "${!expr_result[@]}"
#do
#	echo "$i:${expr_result[$i]}"
#done




#use Case 7 (Reading values from dictionary into array)

#declare -A expr_result
#
#values_array_counter=0
#
#
#read -p "Enter the value of a: " a
#read -p "Enter the value of b: " b
#read -p "Enter the value of c: " c
#
#
#echo "          "
#
##Compute ( a + b * c )
#
#expr1=`awk "BEGIN {print $a + ( $b * $c)}"`
#echo "a+b*c="$expr1
#
#
##Compute ( a * b + c )
#
#expr2=`awk "BEGIN {print ($a * $b) + $c}"`
#echo "a*b+c="$expr2
#
#
##Compute ( c + a / b )
#
#expr3=`awk "BEGIN {print $c + ($a / $b)}"`
#echo "c+a/b="$expr3
#
#
##Compute ( a % b + c )
#
#expr4=`awk "BEGIN {print ($a % $b) + $c}"`
#echo "a%b+c="$expr4
#
#echo "        "
#
#expr_result[a+b*c]=$expr1
#expr_result[a*b+c]=$expr2
#expr_result[c+a/b]=$expr3
#expr_result[a%b+c]=$expr4
#
#echo "Computed Dictionary:"
#
#for i in "${!expr_result[@]}"
#do
#       echo "$i:${expr_result[$i]}"
#done
#
#for i in "${expr_result[@]}"
#do
#	values_array[((values_array_counter++))]=$i
#done
#
#echo "         "
#
#echo "Array of values in dictionary: "${values_array[@]}
#
#echo "         "












#Use Case 8 (Sorting the array and showing the array elements in Descending Order) 

declare -A expr_result

values_array_counter=0


read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c


echo "          "

#Compute ( a + b * c )

expr1=`awk "BEGIN {print $a + ( $b * $c)}"`
echo "a+b*c="$expr1


#Compute ( a * b + c )

expr2=`awk "BEGIN {print ($a * $b) + $c}"`
echo "a*b+c="$expr2


#Compute ( c + a / b )

expr3=`awk "BEGIN {print $c + ($a / $b)}"`
echo "c+a/b="$expr3

#Compute ( a % b + c )

expr4=`awk "BEGIN {print ($a % $b) + $c}"`
echo "a%b+c="$expr4

echo "        "

expr_result[a+b*c]=$expr1
expr_result[a*b+c]=$expr2
expr_result[c+a/b]=$expr3
expr_result[a%b+c]=$expr4

echo "Computed Dictionary:"

for i in "${!expr_result[@]}"
do
       echo "$i:${expr_result[$i]}"
done

for i in "${expr_result[@]}"
do
        values_array[((values_array_counter++))]=$i
done

echo "         "

echo "Array of values in dictionary: "${values_array[@]}

echo "         "

for((i=0;i<4;i++))
do
	for((j=$i+1;j<4;j++))
	do
		if [ ${values_array[i]} -lt ${values_array[j]} ]
		then
			temp=${values_array[i]}
			values_array[i]=${values_array[j]}
			values_array[j]=$temp
		fi
	done
done

echo "Sorted Array of Values in Dictionary in Descending Order: "

for((i=0;i<4;i++))
do
	echo ${values_array[$i]}
done
