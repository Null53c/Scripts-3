#!/bin/bash
# This script will allow the user to decide which vulnerable app they would like to run w/o needing to know the docker commands at hand.
# This script pairs well with the christmas 2019 developed by Mike Watts. 


date 

printf  "Which app would you like to hack today?\n"
printf  " Your options are the following:\n"
printf  " 1 - Juice Shop\n"
printf  " 2 - Metasploitable 2\n"
printf  " 3 - Damn Vulnerable Web App\n"
printf  " 4 - Hackazon\n"
printf  " 5 - Tiredful API\n"
printf  " 6 - Security Shepherd.\n"

read -p 'What do you choose? ' APP

if [ $APP -eq 1 ]; then
	printf  "Starting Juice Shop"
	docker run --rm -d --name juice_shop -p 3000:3000 bkimminich/juice-shop 
elif [ $APP -eq 2 ]; then
       printf  "Starting Metasploitable 2"
	docker run -it -d --rm --name Metasploitable tleemcjr/metasploitable2 sh -c "/bin/services.sh && bash"
		printf "Hopping into Metasploitable 2\n"
	docker attach Metasploitable
elif [ $APP -eq 3 ]; then
	printf  "Starting DVWA"
	docker run --rm -d --name DVWA -p 81:81 vulnerables/web-dvwa
	printf "Nice.. Go to this address 127.0.0.1/install\n"
elif [ $APP -eq 4 ]; then 
	printf  "Starting Hackazon"
	docker run --name hackazon -d -p 80:80 mutzel/all-in-one-hackazon
	printf "Please wait about 30 seconds before going to site.."
	printf "Nice.. Go this this address 127.0.0.1:80\n"
elif [ $APP -eq 5 ]; then 
	printf  "Starting Tiredful API"
	docker run --name Tiredful_API -p 8000:8000 tuxotron/tiredful-api
else 
	printf  "None of your conditions met the critera.... FAIL"
fi




