Tools & Skills 
Windows Subsystem for Linux (WSL) || Linux OS (Debian preferred) 
Basic GNU-Linux command line knowledge
Basic Docker/Docker-Compose CLI knowledge. 
REPO LINK
https://github.com/Ephemeral-Codex/Scripts
GETTING STARTED.
Are you wanting to build a low profile & portable pen-testing lab to assist with building your skills while learning how to use docker containers? Keep on reading! 
I have built a pair of scripts that will do the following.. 
Update/Upgrade your linux/wsl environment 
Install docker-ce 
pull an official kali docker container
pull a variety of vulnerable docker images
Allow a user to choose which vulnerable app to provision.
Run the containers on a local web browser 
THE CURRENT CONTAINERS
The the attacker container is built off of the official Kali Linux docker container base image wit the label Hack_lab. I decided to just use this in order to keep the image size smaller and portable. (Docker is meant for singular use apps).
With this base image, one can install tools that are needed for the job at hand, rather than a 8gb image that might as well be a full VM that resource intensive. For example, If you want to install metasploit in the Kali container, just run the following from within the container apt-get install metasploit-framework.
The vulnerable containers consist the following. 
 Bwapp
 Juice-Shop
 Webgoat 8.0
 DVWA
Tiredful-API 
Hackazon. 
They are focused on WAP for now, but the goal is to have the list grow and become dynamic in nature. 
USAGE
Download the git repo listed from above in your respective directory. ( I recommend making a "project" directory IE: mkdir ~/home/<name>/projects.
Run the christmas.sh script. 
Run vulapps.sh to choose which vuln app you wish to practice on

EXAMPLE: 
The result of running option 1 - Juice Shop 

The app running locally on your browser.

Kill your containers with the following. 
docker kill <container name>  ----> Above example "docker kill juice_shop"
docker rm <container_name> -----> above example "docker rm juice_shop"
If you get really overwhelmed, you can kill all containers (running & stopped) by doing docker system prune and using the "y" option 
Upcoming Features: 
Convert this to a full dockerfile rather than 2 separate scripts. 
Kill and remove containers after 5 failed health checks
Leverage a dockerfile to autorun the provisioning script of Hack_lab container
Add OWASP Security Shepherd (WIP)
Add NodeGoat (WIP) 
please feel free to add-on to this or send me ideas to help improve! 
