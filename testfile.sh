#!/bin/bash

readonly wage_per_hour=20
day=0
echo Welcome to Employee Wage Computation Programme

function dailywagecalc() {
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
        daily_wage=$(($working_hour * $wage_per_hour))
}

function declaration() {
        echo $day : ${TheWorkingDay[$day]}
}

declare -a TheWorkingDay

function array_assignment() {
        while (($day < 20)); do
                dailywagecalc
                day=$(($day + 1))
                totalwage=$(($totalwage + $daily_wage))
                TheWorkingDay[$day]=$daily_wage
                declaration
        done
}

array_assignment

echo -----------------------------------------------------------------
echo "$totalwage is made by employee in one month (${#TheWorkingDay[@]} days)"
