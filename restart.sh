#!/bin/sh
# Marc Tönsing - V1.1 - 18.05.2018
# Github: Alex-Lewa-95-RPI-Noob - V1.2 27.04.20
# Minecraft Server restart and pi reboot.

echo -e "\033[42;1;37m Minecraft: \033[46;1;31m Server and computer is restarting in 30 seconds! \033[0m"
screen -Rd minecraft -X stuff "say Server is restarting in 30 seconds! $(printf '\r')"
sleep 23s
echo -e "\033[42;1;37m Minecraft: \033[46;1;31m Server and computer is restarting in 7 seconds! \033[0m"
screen -Rd minecraft -X stuff "say Server is restarting in 7 seconds! $(printf '\r')"
sleep 1s
echo -e "\033[42;1;37m Minecraft: \033[46;1;31m Server and computer is restarting in 6 seconds! \033[0m"
screen -Rd minecraft -X stuff "say Server is restarting in 6 seconds! $(printf '\r')"
sleep 1s
echo -e "\033[42;1;37m Minecraft: \033[46;1;31m Server and computer is restarting in 5 seconds! \033[0m"
screen -Rd minecraft -X stuff "say Server is restarting in 5 seconds! $(printf '\r')"
sleep 1s
echo -e "\033[42;1;37m Minecraft: \033[46;1;31m Server and computer is restarting in 4 seconds! \033[0m"
screen -Rd minecraft -X stuff "say Server is restarting in 4 seconds! $(printf '\r')"
sleep 1s
echo -e "\033[42;1;37m Minecraft: \033[46;1;31m Server and computer is restarting in 3 seconds! \033[0m"
screen -Rd minecraft -X stuff "say Server is restarting in 3 seconds! $(printf '\r')"
sleep 1s
echo -e "\033[42;1;37m Minecraft: \033[46;1;31m Server and computer is restarting in 2 seconds! \033[0m"
screen -Rd minecraft -X stuff "say Server is restarting in 2 seconds! $(printf '\r')"
sleep 1s
echo -e "\033[42;1;37m Minecraft: \033[46;1;31m Server and computer is restarting in 1 second! \033[0m"
screen -Rd minecraft -X stuff "say Server is restarting in 1 second! $(printf '\r')"
sleep 1s
echo -e "\033[42;1;37m Minecraft: \033[46;1;31m Server is saving... \033[0m"
screen -Rd minecraft -X stuff "say Server is saving... $(printf '\r')"
screen -Rd minecraft -X stuff "save-all flush $(printf '\r')"
sleep 30s
echo -e "\033[45;1;33m Closing server... \033[0m"
screen -Rd minecraft -X stuff "say closing server... $(printf '\r')"
screen -Rd minecraft -X stuff "stop $(printf '\r')"
sleep 15s
echo "Updating to most recent paperclip version."
wget -q -O /home/pi/minecraft/paperclip.jar https://papermc.io/api/v1/paper/1.15.2/latest/download
echo -e "\033[45;1;33m Restarting now. \033[0m"
sudo /sbin/reboot

#Explanation
#
#Colored text output in the system console.
#echo -e "\033[42;1;37m White Minecraft letters on green \033[46;1;31m Red text output on blue. \033[0m"
#echo -e "\033[42;1;37m White Minecraft letters on green \033[45;1;33m Yellow text output on magenta. \033[0m"
#echo -e "\033[46;1;31m Red text output on cyan. \033[0m"
#echo -e "\033[45;1;33m Yellow text output on magenta. \033[0m"
#
#Ingame text output
#screen -Rd minecraft -X stuff "say test $(printf '\r')"
#
#Ingame command
#screen -Rd minecraft -X stuff "set time 1000 $(printf '\r')"
