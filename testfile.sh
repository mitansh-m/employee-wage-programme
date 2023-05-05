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
while (($day < 20)); do 
        dailywagecalc
        day=$(($day+1))
        totalwage=$(($totalwage+$daily_wage))
        declare -a TheWorkingDay
        TheWorkingDay[$day]=$daily_wage
        echo  $day   :   ${TheWorkingDay[$day]}
done 
echo -----------------------------------------------------------------
echo "$totalwage is made by employee in one month (${#TheWorkingDay[@]} days)"