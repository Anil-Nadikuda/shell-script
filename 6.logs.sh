#!/bin/bash

ID=$(id -u)
echo "Script-Name :: $0" 
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

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
echo "INSTALL with the ROOT user"
exit 1
else
echo "You are a root user"
fi

yum install mysql -y &>> LOGFILE

VALIDATE $? "mysql installation"

yum install git -y &>> LOGFILE

VALIDATE $? "git installation"


