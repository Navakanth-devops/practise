#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
echo "Error: : pls run script in root access"
else
echo "running in root access" 
fi

dnf install mysql -y