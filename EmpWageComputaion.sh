#!/bin/bash -x

echo "Welcome to Employee Wage Computation."

isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHrs=20;
numOfWorkingDays=20


for (( day=1; day<=$numOfWorkingDays; day++ ))
do

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

	salary=$(($empHrs*$empRatePerHrs))
	totalSalary=$(($totalSalary + $salary))

done 
