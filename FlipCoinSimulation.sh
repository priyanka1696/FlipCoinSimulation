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
else
	echo "Head Win"
fi

if [[ IsHeadWon -eq IsTailWon ]]
then
while [[ $WinDifference -ge 2 ]]
do
	randomCheck=$(( RANDOM%2 ))

if [[ IsHead -eq randomCheck ]]
then
	echo "Head"
	IsHeadWon=$(( $IsHeadWon + 1 ))
	WinDifference=$(( $IsHeadWon - $IsTailWon ))
else
	echo "Tail"
	IsTailWon=$(( $IsTailWon + 1 ))
	WinDifference=$(( $IsTailWon - $IsHeadWon ))
fi
done
else
	echo "Tie"
fi
