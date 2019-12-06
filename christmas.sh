/bin/bash


# Get the Env ready.

echo "Today we are going to set up your pentesting lab."

echo "Let's update first"
sudo apt-get update -y 

echo "Complete... On to the next step."
sleep 2 

echo "Time to upGRADE your box"
sudo apt-get upgrade -y

echo "Complete"

echo "Install the necessary docker repos"
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb[arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sleep 3 
echo "Repos are good, lets install docker!"
sudo apt-get update
sudo apt-get install docker-ce

echo "lets test if it worked!"
sudo docker run hello-world




# Install the Attacker Machine
echo "Lets pull your lab from the docker registry"
sleep 2 
docker pull ephemeralcodex/redteamparadise:christmas2019

echo "The image has been pulled... lets start it up!"
sleep 10
echo "I will do this for you now.. but you can do this your self with the following"
echo "docker run -it -d ephemeralcodex/redteamparadise:christmas2019 /bin/bash"
docker run -it -d --name Hack_lab ephemeralcodex/redteamparadise:christmas2019 /bin/bash
sleep 5 




# Install Vulnerable Docker images 
echo "Lets install some vulnerable web apps to play with"
echo " Your apps will include: JuiceShop, Metasploitable 2, DamnVulnerableWebApp, bWAPP, & WebGoat"

echo "Installing Juice Shop"
docker pull bkimminich/juice-shop
sleep 3

echo "Installing Metasploitable 2 "
docker pull meknisa/metasploitable-base
sleep 3

echo "Installing DamnVulnerableWebApp"
docker pull vulnerables/web-dvwa
sleep 3 

echo "Installing Bwapp"
docker pull raesene/bwapp
sleep 3

echo "Installing WebGoat"
docker pull webgoat/webgoat-8.0:latest
sleep 3 



echo "HOW TO START THESE APPS"
echo "Starting Juice Shop"
echo "docker run -it -d bkimminich/juice-shop /bin/bash"
echo "docker run -it -d meknisa/metasploitable-base"
echo "docker run -it -d vulnerables/web-dvwa"
echo "docker run -it -d raesene/bwapp"
echo "docker run -it -d webgoat/webgoat-8.0"


# STEPS TO INSTALLING THE SOFTWARE! 
echo "Okay, your container is now running.."
echo "Let's provision your software in the container"

echo " #################### STEPS TO PROVISIONING ########################"
echo " Step 1 - Connect to your container with the following commands --------------> docker attach hacklab <--------------------"
echo " Step 2 - Provision your software                               --------------> ./provision.sh <---------------------------"
echo " Step 3 - Test once the install is complete.                    --------------> msfconsole     <---------------------------"
echo " If step 3 is successful... badass. You lab is now setup! 
