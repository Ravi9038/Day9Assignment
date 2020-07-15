#!/bin/bash -x

echo "Welcome to Employee Wage Computation."

isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHrs=20;
numOfWorkingDays=20
maxHrsInMonth=10

totalEmpHrs=0
totalWorkingDays=0


#Calculating Wage till Number

while [[ $totalEmphrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))

	empCheck=$((RANDOM%3))

	case $empCheck in
		$isFullTime)
			empHrs=8
			;;

		$isPartTime)
			empHrs=4
			;;
		*)
			empHrs=0
			;;

	esac

	totalEmpHrs=$(($totalEmpHrs+empHrs))

done 
totalSalary=$(($totalEmpHrs*$empRatePerHrs))
