#!/bin/bash
# to use, please do the following
# make a board configuration on chess.com, get the fen string format
# make sure the string is as follows "8/8/8/4p1K1/2k1P3/8/8/8 x"
# it must end with the colour of the player whose turn it is, x for black, y for white
# call this script with "bash ./createboardtest.sh tests/testname stringforfen"
# testname should just be the name of the test, DO NOT include .in
# stringforfen is the fen conversion with set of pieces and x for black and y for white

file=${1}
board=${2}
row=0
col=0
filename="$path${file}.in"

echo "setup" >> ./"${filename}"

for (( i=0; i<${#board}; i++ )); do
  echo "${board:$i:1}"
  if [ "${board:$i:1}" = "/" ]
  then
  row=$(($row + 1))
  col=0
  fi
  if [ "${board:$i:1}" = "1" ]
  then
  col=$(($col + 1))
  fi
  if [ "${board:$i:1}" = "2" ]
  then
  col=$(($col + 2))
  fi
  if [ "${board:$i:1}" = "3" ]
  then
  col=$(($col + 3))
  fi
  if [ "${board:$i:1}" = "4" ]
  then
  col=$(($col + 4 ))
  fi
  if [ "${board:$i:1}" = "5" ]
  then
  col=$(($col + 5))
  fi
  if [ "${board:$i:1}" = "6" ]
  then
  col=$(($col + 6))
  fi
  if [ "${board:$i:1}" = "7" ]
  then
  col=$(($col + 7))
  fi
  if [ "${board:$i:1}" = "8" ]
  then
  col=$(($col + 8))
  fi
  echo "${row}${col}"
  rowproper=$((8-$row))
  # pieces logic
  if [ "${board:$i:1}" = "p" ]
  then
    if [ ${col} -eq 0 ]
    then
    echo "+ ${board:$i:1} a${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 1 ]
    then

    echo "+ ${board:$i:1} b${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 2 ]
    then

    echo "+ ${board:$i:1} c${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 3 ]
    then

    echo "+ ${board:$i:1} d${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 4 ]
    then

    echo "+ ${board:$i:1} e${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 5 ]
    then

    echo "+ ${board:$i:1} f${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 6 ]
    then

    echo "+ ${board:$i:1} g${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 7 ]
    then

    echo "+ ${board:$i:1} h${rowproper}" >> ./"${filename}"
    fi
  col=$(($col + 1))
  fi

  if [ "${board:$i:1}" = "P" ]
  then
        if [ ${col} -eq 0 ]
    then
    echo "+ ${board:$i:1} a${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 1 ]
    then

    echo "+ ${board:$i:1} b${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 2 ]
    then

    echo "+ ${board:$i:1} c${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 3 ]
    then

    echo "+ ${board:$i:1} d${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 4 ]
    then

    echo "+ ${board:$i:1} e${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 5 ]
    then

    echo "+ ${board:$i:1} f${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 6 ]
    then

    echo "+ ${board:$i:1} g${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 7 ]
    then

    echo "+ ${board:$i:1} h${rowproper}" >> ./"${filename}"
    fi
  col=$(($col + 1))
  fi
  if [ "${board:$i:1}" = "r" ]
  then
         if [ ${col} -eq 0 ]
    then
    echo "+ ${board:$i:1} a${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 1 ]
    then

    echo "+ ${board:$i:1} b${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 2 ]
    then

    echo "+ ${board:$i:1} c${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 3 ]
    then

    echo "+ ${board:$i:1} d${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 4 ]
    then

    echo "+ ${board:$i:1} e${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 5 ]
    then

    echo "+ ${board:$i:1} f${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 6 ]
    then

    echo "+ ${board:$i:1} g${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 7 ]
    then

    echo "+ ${board:$i:1} h${rowproper}" >> ./"${filename}"
    fi
  col=$(($col + 1))
  fi
  if [ "${board:$i:1}" = "R" ]
  then
        if [ ${col} -eq 0 ]
    then
    echo "+ ${board:$i:1} a${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 1 ]
    then

    echo "+ ${board:$i:1} b${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 2 ]
    then

    echo "+ ${board:$i:1} c${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 3 ]
    then

    echo "+ ${board:$i:1} d${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 4 ]
    then

    echo "+ ${board:$i:1} e${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 5 ]
    then

    echo "+ ${board:$i:1} f${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 6 ]
    then

    echo "+ ${board:$i:1} g${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 7 ]
    then

    echo "+ ${board:$i:1} h${rowproper}" >> ./"${filename}"
    fi
  col=$(($col + 1))
  fi
  
  if [ "${board:$i:1}" = "n" ]
  then
        if [ ${col} -eq 0 ]
    then
    echo "+ ${board:$i:1} a${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 1 ]
    then

    echo "+ ${board:$i:1} b${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 2 ]
    then

    echo "+ ${board:$i:1} c${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 3 ]
    then

    echo "+ ${board:$i:1} d${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 4 ]
    then

    echo "+ ${board:$i:1} e${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 5 ]
    then

    echo "+ ${board:$i:1} f${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 6 ]
    then

    echo "+ ${board:$i:1} g${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 7 ]
    then

    echo "+ ${board:$i:1} h${rowproper}" >> ./"${filename}"
    fi
  col=$(($col + 1))
  fi
  if [ "${board:$i:1}" = "N" ]
  then
        if [ ${col} -eq 0 ]
    then
    echo "+ ${board:$i:1} a${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 1 ]
    then

    echo "+ ${board:$i:1} b${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 2 ]
    then

    echo "+ ${board:$i:1} c${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 3 ]
    then

    echo "+ ${board:$i:1} d${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 4 ]
    then

    echo "+ ${board:$i:1} e${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 5 ]
    then

    echo "+ ${board:$i:1} f${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 6 ]
    then

    echo "+ ${board:$i:1} g${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 7 ]
    then

    echo "+ ${board:$i:1} h${rowproper}" >> ./"${filename}"
    fi
  col=$(($col + 1))
  fi
  if [ "${board:$i:1}" = "b" ]
  then
        if [ ${col} -eq 0 ]
    then
    echo "+ ${board:$i:1} a${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 1 ]
    then

    echo "+ ${board:$i:1} b${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 2 ]
    then

    echo "+ ${board:$i:1} c${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 3 ]
    then

    echo "+ ${board:$i:1} d${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 4 ]
    then

    echo "+ ${board:$i:1} e${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 5 ]
    then

    echo "+ ${board:$i:1} f${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 6 ]
    then

    echo "+ ${board:$i:1} g${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 7 ]
    then

    echo "+ ${board:$i:1} h${rowproper}" >> ./"${filename}"
    fi
  col=$(($col + 1))
  fi
  if [ "${board:$i:1}" = "B" ]
  then
        if [ ${col} -eq 0 ]
    then
    echo "+ ${board:$i:1} a${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 1 ]
    then

    echo "+ ${board:$i:1} b${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 2 ]
    then

    echo "+ ${board:$i:1} c${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 3 ]
    then

    echo "+ ${board:$i:1} d${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 4 ]
    then

    echo "+ ${board:$i:1} e${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 5 ]
    then

    echo "+ ${board:$i:1} f${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 6 ]
    then

    echo "+ ${board:$i:1} g${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 7 ]
    then

    echo "+ ${board:$i:1} h${rowproper}" >> ./"${filename}"
    fi
  col=$(($col + 1))
  fi
  if [ "${board:$i:1}" = "q" ]
  then
        if [ ${col} -eq 0 ]
    then
    echo "+ ${board:$i:1} a${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 1 ]
    then

    echo "+ ${board:$i:1} b${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 2 ]
    then

    echo "+ ${board:$i:1} c${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 3 ]
    then

    echo "+ ${board:$i:1} d${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 4 ]
    then

    echo "+ ${board:$i:1} e${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 5 ]
    then

    echo "+ ${board:$i:1} f${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 6 ]
    then

    echo "+ ${board:$i:1} g${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 7 ]
    then

    echo "+ ${board:$i:1} h${rowproper}" >> ./"${filename}"
    fi
  col=$(($col + 1))
  fi
  if [ "${board:$i:1}" = "Q" ]
  then
        if [ ${col} -eq 0 ]
    then
    echo "+ ${board:$i:1} a${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 1 ]
    then

    echo "+ ${board:$i:1} b${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 2 ]
    then

    echo "+ ${board:$i:1} c${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 3 ]
    then

    echo "+ ${board:$i:1} d${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 4 ]
    then

    echo "+ ${board:$i:1} e${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 5 ]
    then

    echo "+ ${board:$i:1} f${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 6 ]
    then

    echo "+ ${board:$i:1} g${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 7 ]
    then

    echo "+ ${board:$i:1} h${rowproper}" >> ./"${filename}"
    fi
  col=$(($col + 1))
  fi
  if [ "${board:$i:1}" = "k" ]
  then
        if [ ${col} -eq 0 ]
    then
    echo "+ ${board:$i:1} a${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 1 ]
    then

    echo "+ ${board:$i:1} b${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 2 ]
    then

    echo "+ ${board:$i:1} c${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 3 ]
    then

    echo "+ ${board:$i:1} d${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 4 ]
    then

    echo "+ ${board:$i:1} e${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 5 ]
    then

    echo "+ ${board:$i:1} f${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 6 ]
    then

    echo "+ ${board:$i:1} g${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 7 ]
    then

    echo "+ ${board:$i:1} h${rowproper}" >> ./"${filename}"
    fi
  col=$(($col + 1))
  fi
  if [ "${board:$i:1}" = "K" ]
  then
    if [ ${col} -eq 0 ]
    then
    echo "+ ${board:$i:1} a${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 1 ]
    then

    echo "+ ${board:$i:1} b${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 2 ]
    then

    echo "+ ${board:$i:1} c${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 3 ]
    then

    echo "+ ${board:$i:1} d${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 4 ]
    then

    echo "+ ${board:$i:1} e${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 5 ]
    then

    echo "+ ${board:$i:1} f${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 6 ]
    then

    echo "+ ${board:$i:1} g${rowproper}" >> ./"${filename}"
    fi
    if [ ${col} -eq 7 ]
    then

    echo "+ ${board:$i:1} h${rowproper}" >> ./"${filename}"
    fi
  col=$(($col + 1))
  fi
  if [ "${board:$i:1}" = "x" ]
  then
  echo "= black" >> ./"${filename}"
  break
  fi
  if [ "${board:$i:1}" = "y" ]
  then
  echo "= white" >> ./"${filename}"
  break
  fi
done
echo "done" >> ./"${filename}"
echo "game human human" >> ./"${filename}"
exit 1 
