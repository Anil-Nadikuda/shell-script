#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
then
echo "ERROR::$2.... Failed"
exit 12
else
echo "SUCCESS::$2.... Success"
fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR: Run command with root user $N"
exit 1
else
    echo -e "$G logged with root user $N"
fi

yum install mysql -y
VALIDATE $? "mysql"
