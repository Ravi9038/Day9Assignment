#!/bin/bash -x

#!/bin/bash -x

isPartTime=1;
isFullTime=2;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

# VARIABLES
totalEmpHrs=0;
totalWorkingDays=0;

function getEmpWage(){

	local empWage=$1
	empHours=$(( $empWage * $EMP_RATE_PER_HR ))
	echo $empHours
}

function getWorkHours(){
	local empCheck=$1
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
	echo $empHrs
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH &&
	$totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	empHours="$( getWorkHours $empCheck )"
	totalEmpHrs=$(( $totalEmpHrs + $empHours ))
	dailyWages[$totalWorkingDays]=$(getEmpWage $empHours)
done
totalSalary=$(( $totalEmpHrs * $EMP_RATE_PER_HR ))
echo ${dailyWages[@]}
