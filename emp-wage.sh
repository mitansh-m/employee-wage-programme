#!/bin/bash

readonly wage_per_hour=20

echo Welcome to Employee Wage Computation Programme
echo -----------------------------------------------

function dailywagecalc(){
attendance=$(($RANDOM % 3))
case $attendance in  
        0)
        working_hour=8
        ;;
        1) 
        working_hour=4
        ;;
        *)
        working_hour=0
        ;;
esac
daily_wage=$(($working_hour*$wage_per_hour))
}

day=0 
hour=0

while (($hour<=100 && $day<=20)); do 
        dailywagecalc
        day=$(($day+1))
        hour=$(($hour+$working_hour))
        totalwage=$(($totalwage+$daily_wage))
done 

echo "$totalwage is made by employee in one month"