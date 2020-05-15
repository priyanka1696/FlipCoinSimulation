#!/bin/bash -x
echo "Welcome To Flip Coin Simulation "

IsHead=0;
IsHeadWon=0;
IsTailWon=0;

while [[ $IsHeadWon -lt 21 && $IsTailWon -lt 21 ]]
do
	randomCheck=$(( RANDOM%2 ))

if [[ IsHead -eq randomCheck ]]
then
	echo "Tail"
	IsHeadWon=$(( $IsHeadWon + 1 ))
else
	echo "Head"
	IsTailWon=$(( $IsTailWon + 1 ))
fi
done

echo "Total Number Of Head Win Is $IsHeadWon"
echo "Total Number Of Tail Win Is $IsTailWon"

if [[ IsHeadWon -lt IsTailWon ]]
then
	echo "Tail Win"
elif [[ IsHeadWon -eq IsTailWon ]]
then
	echo "Tie"
else
	echo "Head Win"
fi
