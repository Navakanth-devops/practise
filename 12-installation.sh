#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "Error: : pls run script in root access"
else
    echo "running in root access" 
fi

dnf list installed nginx

if [ $? -ne 0 ]
   then 
   echo "installing nginx"
    dnf install nginx -y

    if [$? -eq 0 ]
then
    echo "nginx installation success"
else
    echo " installation error"
    exit 1

fi

    else

    echo "nginx is already installed, Nothing to do"

fi