#!/bin/bash -x

MAX_COUNT=50
FLIP_COUNT=0
HEAD=0
TAILS=0

while [ $FLIP_COUNT -lt $MAX_COUNT  ]
do
   A=$((RANDOM%2))

   if [ $A -eq 1 ]
      then
      ((HEAD++))
   else
      ((TAILS++))
   fi
	((FLIP_COUNT++))

	if [ $HEAD -eq 21 ]
		then
		FLIP_COUNT=55
	elif [ $TAILS -eq 21 ]
		then
		FLIP_COUNT=55
	fi
done


if [ $HEAD -eq 21 ]
	then
	echo "Head is won by 21"
	echo Tails=$TAILS
elif [ $TAILS -eq 21 ]
	then
	echo "Tails is won by 21"
	echo "Head = $HEAD"
elif [ $HEAD -eq $TAILS ]
	then
	echo "Its a Tie"
fi





