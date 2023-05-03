#!/bin/bash

readonly daily_wage_per_hour=20
echo Welcome to Employee Wage Computation Programme
echo -----------------------------------------------
attendance=$(($RANDOM % 3))
if (($attendance==0)); then 
    echo 'employee is absent'
    working_hour=0
    attendance_alphabetic="absent"
elif (($attendance==1)); then 
    echo 'employee is full time'
    working_hour=8
    attendance_alphabetic="full time"
else
    echo 'employee is part time'
    working_hour=4
    attendance_alphabetic="part time"
fi 
echo -----------------------------------------------
echo $(($daily_wage_per_hour*$working_hour)) is the daily wage for $attendance_alphabetic employee