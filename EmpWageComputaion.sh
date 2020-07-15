#!/bin/bash -x

echo "Welcome to Employee Wage Computation."

#Use Case 2

empCheck=$(( RANDOM%2 ))

if [[ $empCheck -eq 1 ]]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi


