#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo "INSTALL with the ROOT user"
exit 1
else
echo "You are a root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
echo "ERROR::Install of mysql not success"
exit 12
else
echo "SUCCESS::install mysql success"
fi

yum install git -y

if [ $? -ne 0 ]
then
echo "ERROR::Install of GIT not success"
exit 12
else
echo "SUCCESS::Install GIT success"
fi