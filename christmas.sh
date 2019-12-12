#!/bin/bash


# Get the Env ready.
printf  "Today we are going to set up your pentesting lab. \n"
sleep 3

printf  "Let's update first\n\n"
sleep 3
sudo apt-get update -y 

printf  "Complete... On to the next step.\n\n"
sleep 2 

printf  "Time to upGRADE your box\n\n"
sleep 3 
sudo apt-get upgrade -y

printf  "Complete"

printf  "Install the necessary docker repos\n\n"
sleep 3 
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb[arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sleep 2
printf  "Repos are good, lets install docker!\n\n"
sudo apt-get update
sudo apt-get install docker-ce

printf  "lets test if it worked!\n\n"
sudo docker run hello-world


# Install the Attacker Machine
printf  "Lets pull your lab from the docker registry\n\n"
sleep 1 
docker pull ephemeralcodex/redteamparadise:christmas2019

printf  "The image has been pulled... lets start it up!\n\n"
sleep 1
printf  "I will do this for you now.. but you can do this your self with the following"
printf  "docker run -it -d ephemeralcodex/redteamparadise:christmas2019 /bin/bash\n\n"
docker run -it -d --name Hack_lab ephemeralcodex/redteamparadise:christmas2019 /bin/bash
sleep 1 



# Install Vulnerable Docker images 
printf  "Lets install some vulnerable web apps to play with\n\n"
printf  " Your apps will include: JuiceShop\n Metasploitable 2\n DamnVulnerableWebApp\n Hackazon\n & Tiredful API\n"

printf  "Installing Juice Shop\n"
docker pull bkimminich/juice-shop
sleep 2

printf  "Installing Metasploitable 2\n"
docker pull tleemcjr/metasploitable2
sleep 2

printf  "Installing DamnVulnerableWebApp\n"
docker pull vulnerables/web-dvwa
sleep 2 

printf  "Installing Hackazon\n\n"
docker pull mutzel/all-in-one-hackazon
sleep 2

printf  "Tiredful API\n\n"
docker pull tuxotron/tiredful-api
sleep 2 

#printf "Would you like to install OWASP Security Shepherd?\n"
#printf "A bit more setup is required. (yes/no) "
#read CHOICE

#if [ $CHOICE -eq yes ]; then
#    printf "We are going to install Security Shepherd.\n"
#    printf "This is going to install the following:\n"
#    printf "git\n maven\n default-jdk"
#    sleep 4
#    sudo apt install git maven docker-compose default-jdk
#    mkdir security_shepherd
#    cd security_shepherd
#    git clone https://github.com/OWASP/SecurityShepherd.git 
#    sudo gpasswd -a $USER docker
#    mvn -Pdocker clean install -DskipTests
#    sleep 3

#    printf " Installing the git repo"
#    git clone https://github.com/OWASP/SecurityShepherd.git
#    cd SecurityShepherd
#    sudo gpasswd -a $USER docker
#    mvn -Pdocker clean install -DskipTests
#else
#    break
#fi


printf "Now try going to your localhost."


printf  "#################HOW TO START THESE APPS ########################\n"
printf  "Starting Juice Shop"
printf  "docker run -it -d bkimminich/juice-shop /bin/bash"
printf  "docker run -it -d docker pull tleemcjr/metasploitable2"
printf  "docker run -it -d vulnerables/web-dvwa"
printf  "docker run -it -d mutzel/all-in-one-hackazon"
printf  "docker run -it -d tuxotron/tiredful-api"


# STEPS TO INSTALLING THE SOFTWARE! 
printf  "Your container is now running..\n"
printf  "Let's provision your software in the container\n\n\n\n\n"
