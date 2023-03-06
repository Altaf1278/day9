#!/bin/bash
isparttime=1;
isfulltime=2;
employee_wph=20;
result=$((RANDOM%3));

if [ $result -eq 1 ]
then 
      echo "employee is parttime"
      workinghour=4
elif [ $result -eq 2 ]
then 
      echo "employee is fulltime"
      workinghour=8
else
      echo "employee is absent"
      workinghour=0
fi
employee_wage=$(($employee_wph*$workinghour))
echo "employee_salary"$employee_wage