#!/bin/bash -x
echo "Welcome to Employee Wage System"

#constant
wagePerHour=20
fullDayHour=8
partTimeHour=8

#variable
attendance=1
present=0
dailyWage=0
partTimeEmployee=""
partTimeWage=0
choice=0

function employeeAttendance() {
	present=$((RANDOM % 2))
	if [ $present -eq $attendance ]
	then
		echo "Employee is Present"
	else
		echo "Employee is Absent"
	fi
}

function employeeDailyWage() {
	dailyWage=$(($wagePerHour * $fullDayHour))
	echo "Employee Daily Wage is $dailyWage"
}

function employeePartTimeWage() {
	read -p "Enter part time employee name:" partTimeEmployee
	partTimeWage=$(($wagePerHour * $fullDayHour / 2))
	echo "$partTimeEmployee has $partTimeWage part time wage"
}

function chooseOption() {
	echo -e "1:Attendance\n2:Daily Wage\n3:Part Time Employee & Wage"
	read -p "Enter your Choice:" choice
	case $choice in
	1)
		employeeAttendance
		;;
	2)
		employeeDailyWage
		;;
	3)
		employeePartTimeWage
		;;
	*)
		echo "Invalid choice...."
	esac
}
chooseOption
