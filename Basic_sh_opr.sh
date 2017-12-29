#!/bin/sh

#######################Basic operations:######################
#Basic operations, assign value to variable and output to screen
#Assign value to variable 'a'
a="hello world!"
#Now print a
echo "a is:"
echo $a
#Now showing the case when is hard for system to recognize variable from strings
num=2 
echo "this is the ${num}nd" 
echo "this is the $numnd" #without this pair of {}, linux couldn't recognize num
# $0 is name of this file, $1 , $2, $3... stand for 1st, 2nd, 3rd ... input argument
echo " `basename $0` "
echo "Your first argument is: $1 " # to pass arguments into shell script,
                                   # try this one:# sh name_of_script.sh arg_1 arg_2... 
#######################Control structures:######################
#[1]Control structures: if-elif-else-fi 
a=1
b=2
if [ "$a" -eq "$b" ];then
  echo "a is equal to b"
elif [ "$a" -lt "$b" ];then
  echo "a is less than b"
else
  echo "a is greater than b"
fi

#[2]Shortcuts avoid using if-else control part
# (1) use A && B :if A is false:  because if there is one 0 will make result of AND to be 0
# 		          complier will skip B part
# 		          if A is true, B will be processed
[ -f "/etc/shadow" ] && echo "This computer uses shadow passwords"

# (2) use A || B :if A is false: B will be processed 
# 		          if A is true, because if there is one 1 will make result of OR to be 1
# 		          compiler will skip B part
[ -f "/etc/shadow" ] || echo "This computer doesn't use shadow passwords"


#[3]Control structures: case-control
a=1
case "$a" in
1) echo "a is 1" ;;
2) echo "a is 2" ;;   
*)  echo "a is neither 1 nor 2"
esac

fruit="apple"
case "$fruit" in
apple) echo "fruit is apple" ;;
banana) echo "fruit is banana" ;;   
*)  echo "fruit is neither apple nor banana"
esac

#[4]Control structures: loop-structure
for var in A B C; do
    echo "var is $var"
done

