#!/bin/bash


# Get the Env ready.

printf  "Today we are going to set up your pentesting lab. \n"
sleep 3

printf  "Let's update first\n\n"
sudo apt-get update -y 

printf  "Complete... On to the next step.\n\n"
sleep 2 

printf  "Time to upGRADE your box\n\n"
sudo apt-get upgrade -y

printf  "Complete"

printf  "Install the necessary docker repos\n\n"
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb[arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sleep 3 
printf  "Repos are good, lets install docker!\n\n"
sudo apt-get update
sudo apt-get install docker-ce

printf  "lets test if it worked!\n\n"
sudo docker run hello-world




# Install the Attacker Machine
printf  "Lets pull your lab from the docker registry\n\n"
sleep 2 
docker pull ephemeralcodex/redteamparadise:christmas2019

printf  "The image has been pulled... lets start it up!\n\n"
sleep 10
printf  "I will do this for you now.. but you can do this your self with the following"
printf  "docker run -it -d ephemeralcodex/redteamparadise:christmas2019 /bin/bash\n\n"
docker run -it -d --name Hack_lab ephemeralcodex/redteamparadise:christmas2019 /bin/bash
sleep 5 




# Install Vulnerable Docker images 
printf  "Lets install some vulnerable web apps to play with\n\n"
printf  " Your apps will include: JuiceShop\n Metasploitable 2\n DamnVulnerableWebApp\n bWAPP\n & WebGoat\n"

printf  "Installing Juice Shop\n"
docker pull bkimminich/juice-shop
sleep 3

printf  "Installing Metasploitable 2\n"
docker pull meknisa/metasploitable-base
sleep 3

printf  "Installing DamnVulnerableWebApp\n"
docker pull vulnerables/web-dvwa
sleep 3 

printf  "Installing Bwapp\n\n"
docker pull raesene/bwapp
sleep 3

printf  "Installing WebGoat\n\n"
docker pull webgoat/webgoat-8.0:latest
sleep 3 



printf  "#################HOW TO START THESE APPS ########################\n"
printf  "Starting Juice Shop"
printf  "docker run -it -d bkimminich/juice-shop /bin/bash"
printf  "docker run -it -d meknisa/metasploitable-base"
printf  "docker run -it -d vulnerables/web-dvwa"
printf  "docker run -it -d raesene/bwapp"
printf  "docker run -it -d webgoat/webgoat-8.0"


# STEPS TO INSTALLING THE SOFTWARE! 
printf  "Your container is now running..\n"
printf  "Let's provision your software in the container\n\n\n\n\n"

printf  " #################### STEPS TO PROVISIONING ########################\n"
printf  " Step 1 - Connect to your container with the following commands --------------> docker attach hacklab <--------------------\n"
printf  " Step 2 - Provision your software                               --------------> ./provision.sh <---------------------------\n"
printf  " Step 3 - Test once the install is complete.                    --------------> msfconsole     <---------------------------\n"
printf  " If step 3 is successful... badass. You lab is now setup!"


printf " Here is a list of your docker containers\n\n"
printf " ######################## DOCKER USAGE QUICKSTART ###############################\n\n"
printf " List your images                         ------> docker image ls \n"
printf " List your containers                     ------> docker container ls \n"
printf " Start a container in the background      ------> docker run -it -d --<container_name> /bin/bash\n"
printf " Login to your container                  ------> docker attach <container_name>\n"
