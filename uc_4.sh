#!/bin/bash
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
dailywph=$(( $employee_wph * $workinghour))
echo "dailywage of emplyee" $dailywph