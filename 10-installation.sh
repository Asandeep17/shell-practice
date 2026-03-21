#!/bin/bash 


userid=$(id -u)

if [ $userid -ne 0 ];then
echo "please run this script with root user access"
exit 1
fi 
exit
echo "Installing Nginx"
dnf install nginx -y