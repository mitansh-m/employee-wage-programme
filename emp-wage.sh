#!/bin/bash

readonly daily_wage_per_hour=20
echo Welcome to Employee Wage Computation Programme
echo -----------------------------------------------
attendance=$(($RANDOM % 3))
case $attendance in  
        0)
        attendance_alphabetic='full time'
        working_hour=8
        ;;
        1) 
        attendance_alphabetic='part time'
        working_hour=4
        ;;
        *)
        attendance_alphabetic='absent'
        working_hour=0
        ;;
esac
echo $(($daily_wage_per_hour*$working_hour)) is the daily wage for $attendance_alphabetic employee