#!/bin/bash -x

echo "Welcome to Employee Wage Computation."

isPartTime=1;
isFullTime=2;

empRatePerHrs=20;
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

echo $salary
