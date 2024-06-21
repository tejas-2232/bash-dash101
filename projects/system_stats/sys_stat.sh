#!bin/bash
#author: tejas bachhav
#dat: June 20, 2024
#

echo "********************************SHELL SCRIPTING******************************"

sleep 2
echo "Hey There, so you want to check your system stats?"

sleep 3

echo "Please Enter your Name"
read name

echo "hi $name , welcome"

echo "***************************************************************"
echo "                                                               "

echo "******************** Current Date and Time ***********************"
date | awk ''

time
echo "******************** Disk space Available ***********************"
df -h

echo "******************** Memory Usage ***********************"
free -h
echo "               "

echo "******************** User Uptime ***********************"
uptime
echo "                "

echo "******************** CPU Load ***********************"
mpstat
echo "                "

echo "************************** update package list ************************************"
sudo apt-get update

echo "*****************Installing net-tools which contains ifconfig*********************"
sudo apt install -y net-tools


echo "******************** Network Statistics ***********************"
ifconfig
echo "                "

echo "******************** Last 3 Login Details ***********************"
echo "                "

echo "******************** currently connected ***********************"
echo "                "



echo "============================================"
echo "report generated on: $(date)"
