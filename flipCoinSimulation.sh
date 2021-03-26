#!/bin/bash -x

coinFlip=$((RANDOM%2))
IS_HEAD=1
if [ $coinFlip -eq $IS_HEAD ]
	then
		echo HEAD
	else
		echo TAIL
fi
