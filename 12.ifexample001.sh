#!/usr/bin/env bash
#
# Author: bavduer
# Email: bavduer@163.com
# Date: 2019/03/22
# Usage: if user exist.

read -p "Please input your check username: " USERNAME
if id $USERNAME ;then
  printf "别逼逼！～\n"
else
  read -p "Do your want to create this user(yes/no): " OR
  if [ $OR == "yes" ];then
    useradd $USERNAME
  else
    printf "滚犊子！～\n"
  fi
  
fi
