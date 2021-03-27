#!/bin/bash -x

MAX_COUNT=10
FLIP_COUNT=0
HEAD=0
TAILS=0
while [ $FLIP_COUNT != $MAX_COUNT ]
do
   A=$((RANDOM%2))


   if [ $A -eq 1 ]
      then
      ((HEAD++))
   else
      ((TAILS++))
   fi

   ((FLIP_COUNT++))
done
echo HEAD=$HEAD
echo TAILS=$TAILS







