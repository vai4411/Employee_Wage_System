#!/bin/bash -x
echo "Welcome to Employee Wage System"

#variable
attendance=1
present=0

function employeeAttendance(){
	present=$((RANDOM % 2))
	if [ $present -eq $attendance ]
	then
		echo "Employee is Present"
	else
		echo "Employee is Absent"
	fi
}
employeeAttendance
