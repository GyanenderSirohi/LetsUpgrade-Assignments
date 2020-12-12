#!/bin/bash
echo "Please Enter the password"
echo " "
read pass
len="${#pass}"
if [[ $len -lt 8 ]];
 then
    echo "Password must be atleast 8 characters"
    exit 1
    fi
echo $pass |grep "[a-z]" |grep "[A-Z]" |grep "[0-9]"
if [[ $? -ne 0 ]];
 then 
    echo "Your password must contain Numbers, Upper and Lower case letters"
    exit 2
    fi
echo "Your Password is Strong"
