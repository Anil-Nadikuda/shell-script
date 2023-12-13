#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
then
echo "ERROR::Install  not success"
exit 12
else
echo "SUCCESS::install success"
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

VALIDATE

yum install git -y

VALIDATE


