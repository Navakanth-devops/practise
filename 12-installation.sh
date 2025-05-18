#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "Error: : pls run script in root access"
else
    echo "running in root access" 
fi

dnf list installed mysql

if [ $? -ne 0 ]
   then 
   echo "installing mysql"
    dnf install mysql -y

    if [$? -eq 0 ]
then
    echo "mysql installation success"
else
    echo " installation error"
    exit 1

fi

    else

    echo "Mysql is already installed, Nothing to do"

fi