#!/bin/bash -x
echo "Welcome To Flip Coin Simulation "

IsHead=0;
randomCheck=$(( RANDOM%2 ))

if [[ IsHead -eq randomCheck ]]
then
	echo "Heads"
else
	echo "Tails"
fi
