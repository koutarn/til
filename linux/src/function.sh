#! /bin/bash

function sum {
  declare -i num1=$1
  declare -i num2=$2

  declare -i total=num1+num2

  echo ${total}

  return 0
}

sum 1 2

