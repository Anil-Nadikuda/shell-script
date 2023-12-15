#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
then
echo -e"$R ERROR::$2.... Failed $N"
exit 12
else
echo -e "$G SUCCESS::$2.... Success $N"
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
