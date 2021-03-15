#! /bin/bash

declare -a array
array=(1 2 3)

#equal
if [ ${array[0]} -eq ${array[0]} ]; then
  echo "${array[0]} = ${array[0]}"
fi

# >
if [ ${array[2]} -gt ${array[1]} ]; then
  echo "${array[2]} > ${array[1]}"
fi

# >=
if [ ${array[0]} -ge ${array[0]} ]; then
  echo "${array[0]} >= ${array[0]}"
fi

# <
if [ ${array[0]} -lt ${array[1]} ]; then
  echo "${array[0]} < ${array[1]}"
fi
# <=
if [ ${array[0]} -le ${array[0]} ]; then
  echo "${array[0]} <= ${array[0]}"
fi

