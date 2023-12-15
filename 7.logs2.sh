#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo -e "\e[31m ERROR: Run command with root user"
exit 1
else
    echo "\e[32m logged with root user"
fi

yum install mysql -y
VALIDATE $? " mysql"
