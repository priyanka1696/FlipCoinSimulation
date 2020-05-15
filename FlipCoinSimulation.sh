#!/bin/bash -x
echo "Welcome To Flip Coin Simulation "

IsHead=0;
IsHeadWon=0;
IsTailWon=0;

for (( count=0; count<=10; count++ ))
do
	randomCheck=$(( RANDOM%2 ))

if [[ IsHead -eq randomCheck ]]
then
	echo "Head"
	IsHeadWon=$(( $IsHeadWon + 1 ))
else
	echo "Tail"
	IsTailWon=$(( $IsTailWon + 1 ))
fi
done

echo "Total Number Of Head Win Is $IsHeadWon"
echo "Total Number Of Tail Win Is $IsTailWon"
