#!/bin/bash

userid=$(id -u)

if [ $userid -ne 10 ]
then
echo "Error: : pls run script in root access"
else
echo "running in root access" 
dnf install mysql -y