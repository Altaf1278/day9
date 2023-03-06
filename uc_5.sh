#!/bin/bash
#Employee Daily Hour = 8 (Full Time)
#Employee working for 5 days in week = 5 * 8 = 40 Hrs.
#Employee Monthly working for 20 days = 5 days in week * 4 weeks = 20 Days

totalsalary=0;
workinghour=0;
for ((day=1;day<=20;day++))
do
isparttime=1;
isfulltime=2;
employee_wph=20;
isresult=$((RANDOM%3));

case $isresult in
    1)
       echo "employee is halfday"
       workinghour=4;
    ;;
    2)
       echo "employee is present"
       workinghour=8;
    ;;
    0)
       echo "employee is absent"
esac         
dailywph=$(( $employee_wph * $workinghour ));
totalsalary=$(( $totalsalary + $dailywph ));
done
echo "dailywage of emplyee" $dailywph
echo "dailywage for 20days" $totalsalary