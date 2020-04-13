#!/bin/bash -x
echo "Welcome to Employee Wage System"

#constant
wagePerHour=20
fullDayHour=8

#variable
attendance=1
present=0
dailyWage=0

function employeeAttendance() {
	present=$((RANDOM % 2))
	if [ $present -eq $attendance ]
	then
		echo "Employee is Present"
		dailyWage=$(($wagePerHour * $fullDayHour))
	else
		echo "Employee is Absent"
		dailyWage=0
	fi
	echo "Employee Daily Wage is $dailyWage"
}
employeeAttendance
