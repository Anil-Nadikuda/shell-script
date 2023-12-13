#!/bin/bash

ID=$(id -u)
echo "Script-Name :: $0" 

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

yum install mysql -y

VALIDATE $? "mysql installation"

yum install git -y

VALIDATE $? "git installation"


