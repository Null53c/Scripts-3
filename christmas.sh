#!/bin/bash


Get the Env ready.

printf  "Today we are going to set up your pentesting lab."

printf  "Let's update first"
sudo apt-get update -y 

printf  "Complete... On to the next step."
sleep 2 

printf  "Time to upGRADE your box"
sudo apt-get upgrade -y

printf  "Complete"

printf  "Install the necessary docker repos"
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb[arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sleep 3 
printf  "Repos are good, lets install docker!"
sudo apt-get update
sudo apt-get install docker-ce

printf  "lets test if it worked!"
sudo docker run hello-world




# Install the Attacker Machine
printf  "Lets pull your lab from the docker registry"
sleep 2 
docker pull ephemeralcodex/redteamparadise:christmas2019

printf  "The image has been pulled... lets start it up!"
sleep 10
printf  "I will do this for you now.. but you can do this your self with the following"
printf  "docker run -it -d ephemeralcodex/redteamparadise:christmas2019 /bin/bash"
docker run -it -d --name Hack_lab ephemeralcodex/redteamparadise:christmas2019 /bin/bash
sleep 5 




# Install Vulnerable Docker images 
printf  "Lets install some vulnerable web apps to play with"
printf  " Your apps will include: JuiceShop, Metasploitable 2, DamnVulnerableWebApp, bWAPP, & WebGoat"

printf  "Installing Juice Shop"
docker pull bkimminich/juice-shop
sleep 3

printf  "Installing Metasploitable 2 "
docker pull meknisa/metasploitable-base
sleep 3

printf  "Installing DamnVulnerableWebApp"
docker pull vulnerables/web-dvwa
sleep 3 

printf  "Installing Bwapp"
docker pull raesene/bwapp
sleep 3

printf  "Installing WebGoat"
docker pull webgoat/webgoat-8.0:latest
sleep 3 



printf  "HOW TO START THESE APPS"
printf  "Starting Juice Shop"
printf  "docker run -it -d bkimminich/juice-shop /bin/bash"
printf  "docker run -it -d meknisa/metasploitable-base"
printf  "docker run -it -d vulnerables/web-dvwa"
printf  "docker run -it -d raesene/bwapp"
printf  "docker run -it -d webgoat/webgoat-8.0"


# STEPS TO INSTALLING THE SOFTWARE! 
printf  "Okay, your container is now running.."
printf  "Let's provision your software in the container"

printf  " #################### STEPS TO PROVISIONING ########################"
printf  " Step 1 - Connect to your container with the following commands --------------> docker attach hacklab <--------------------"
printf  " Step 2 - Provision your software                               --------------> ./provision.sh <---------------------------"
printf  " Step 3 - Test once the install is complete.                    --------------> msfconsole     <---------------------------"
printf  " If step 3 is successful... badass. You lab is now setup!"
