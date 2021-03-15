#! /bin/bash

function sum {
  declare -i num1=$1
  declare -i num2=$2

  declare -i total=num1+num2

  echo ${total}

  return 0
}

function minus {
  declare -i total=$1-$2
  echo ${total}
}

sum 1 2
minus 10 4

