#!/bin/bash
#Employee Daily Hour = 8 (Full Time)
#Employee working for 5 days in week = 5 * 8 = 40 Hrs.
#Employee Monthly working for 20 days = 5 days in week * 4 weeks = 20 Days

totalsalary=0;
workinghour=0;
employee_wph=20;
totalworkinghour=0
day=1;

while [[ $day -le 20 && $totalworkinghour -lt 100 ]]
do

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

totalworkinghour=$(( $totalworkinghour + $workinghour ))   

if [ $totalworkinghour -gt 100 ]     
then 
      totalworkinghour=$(( $totalworkinghour - $workinghour ));
      break;
fi
dailywph=$(( $employee_wph * $workinghour ));
totalsalary=$(( $totalsalary + $dailywph ));
((day++));
done
echo "Employee has earned 100 days" $totalsalary;
echo "employee working for hours" $totalworkinghour
