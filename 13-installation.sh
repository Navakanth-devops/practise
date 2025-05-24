#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
USERID=$(id -u)
Log_folder="/var/log/script_logs"
SCRIPT_NAME=$(echo $0 |cut -d . -f1)
log_file="$Log_folder/$SCRIPT_NAME.log"

mkdir -p $Log_folder
echo " script execution started: $(date)" | tee -a $log_file

if [ $USERID -ne 0 ]
    then
    echo -e " $R you are running user access, pls run in root access $N" | tee -a $log_file
    exit 1
else
    echo -e "$G you are running in root access $N" | tee -a $log_file
fi

VALIDATE(){
if [ $1 -eq 0 ]
   then
   echo -e "Installing $2 is $G success $N " | tee -a $log_file
else
   echo -e "Installation $2 is $R Failure $N " | tee -a $log_file
fi
}


dnf list installed mysql 
if [ $? -ne 0 ]
   then
   echo -e " installing mysql $G installing $N " | tee -a $log_file
   dnf install mysql -y | tee -a $log_file
   VALIDATE $? "mysql" 
else 
   echo -e " $G Already installed $N " | tee -a $log_file

fi

dnf list installed python3 
if [ $? -ne 0 ]
   then
   echo -e " installing python3 $G installing $N "  | tee -a $log_file
   dnf install python3 -y | tee -a $log_file
   VALIDATE $? "python3"
else 
   echo -e " $G Already installed $N " | tee -a $log_file

fi

dnf list installed nginx 
if [ $? -ne 0 ]
   then
   echo -e " installing nginx $G installing $N " | tee -a $log_file
   dnf install nginx -y | tee -a $log_file
   VALIDATE $? "nginx"
else 
   echo -e " $G Already installed $N " | tee -a $log_files

fi

