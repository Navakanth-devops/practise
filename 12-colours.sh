#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
USERID=$(id -u)

if [ $USERID -ne 0 ]
    then
    echo -e " $R you are running user access, pls run in root access $N"
    exit 1
else
    echo -e "$G you are running in root access $N"
fi

VALIDATE(){
if [ $1 eq 0]
   then
   echo -e "Installing $2 is $G success $N "
else
   echo -e "Installation $R Failure $N "
fi
}

dnf list installed mysql
if [ $? -ne 0 ]
   then
   echo -e " installing mysql $G installing $N "
   dnf install mysql -y
   VALIDATE $? mysql
else 
   echo -e " $G Already installed $n "

fi

dnf list installed python3
if [ $? -ne 0 ]
   then
   echo -e " installing python3 $G installing $N "
   dnf install python3 -y
   VALIDATE $? python3
else 
   echo -e " $G Already installed $n "

fi

dnf list installed nginx
if [ $? -ne 0 ]
   then
   echo -e " installing nginx $G installing $N "
   dnf install nginx -y
   VALIDATE $? nginx
else 
   echo -e " $G Already installed $n "

fi