#!/bin/bash

echo Welcome to Employee Wage Computation Programme
echo -----------------------------------------------
attendance=$(($RANDOM % 2))
if (($attendance==0)); then 
    echo 'employee is present'
else 
    echo 'employee is absent'
fi 