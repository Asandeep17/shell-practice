#!/bin/bash 


userid=$(id -u)

if [ $userid -ne 0 ]; then
echo "please run this script with root user access"
exit 1
fi 

echo "Installing Nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
echo "installing nginx ... failure"
exit 1
else 
echo "installing Nginx ... sucess"
fi