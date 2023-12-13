#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo "INSTALL with the ROOT user"
exit 1
else
echo "You are a root user"
fi

yum install MySQL -y

if [ $? -ne 0 ]
then
echo "ERROR::Install od mysqlnot success"
else
echo "install mysql success"
fi