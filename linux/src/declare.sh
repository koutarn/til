#! /bin/bash

# number
declare -i num

# array
declare -a array
array=(1 2 3)
echo ${array[0]}
echo ${array[1]}
echo ${array[2]}

num=1+1
echo ${num}

# string
declare str
str='$num'
str="$num"
