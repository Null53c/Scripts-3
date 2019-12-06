#!/bin/bash
# This script will allow the user to decide which vulnerable app they would like to run w/o needing to know the docker commands at hand.
# This script pairs well with the christmas 2019 developed by Mike Watts. 


date 

printf  "Which app would you like to hack today?\n"
printf  " Your options are the following:\n"
printf  " 1 - Juice Shop\n"
printf  " 2 - Metasploitable 2\n"
printf  " 3 - Damn Vulnerable Web App\n"
printf  " 4 - BWapp\n"
printf  " 5 - WebGoat\n"

read -p 'What do you choose? ' APP

if [ $APP -eq 1 ]; then
	printf  "Starting Juice Shop"
	docker run --rm --name juice_shop -p 3000:3000 bkimminich/juice-shop 
elif [ $APP -eq 2 ]; then
       printf  "Starting Metasploitable 2"
	docker run -it --rm --name Metasploitable meknisa/metasploitable-base
elif [ $APP -eq 3 ]; then
	printf  "Starting DVWA"
	docker run --rm --name DVWA -p 80:80 vulnerables/web-dvwa
elif [ $APP -eq 4 ]; then 
	printf  "Starting BWAPP"
	docker run -it --rm --name BWAPP -p 81:81 raesene/bwapp
elif [ $APP -eq 5 ]; then 
	printf  "Starting WebGoat"
	docker run -it --rm --name WebGoat -p 82:82 webgoat/webgoat-8.0 
else 
	printf  "None of your conditions met the critera.... FAIL"
fi




