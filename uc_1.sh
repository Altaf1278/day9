#!/bin/bash
present=1;
ispresent=$((RANDOM%2));
if [ $ispresent -eq 1 ]
then 
     echo "employee is present";
else 
     echo "employee is absent";
fi