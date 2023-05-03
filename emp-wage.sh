#!/bin/bash

readonly daily_wage_per_hour=20
readonly daily_hour=8 
echo Welcome to Employee Wage Computation Programme
echo -----------------------------------------------
attendance=$(($RANDOM % 2))
if (($attendance==0)); then 
    echo 'employee is present'
else 
    echo 'employee is absent'
fi 
echo -----------------------------------------------
echo $(($daily_wage_per_hour*$daily_hour)) is the daily wage for full time employee