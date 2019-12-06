/bin/bash
# This script will allow the user to decide which vulnerable app they would like to run w/o needing to know the docker commands at hand.
# This script pairs well with the christmas 2019 developed by Mike Watts. 


date 

echo "Which app would you like to hack today?"
echo " Your options are the following:"
echo " 1 - Juice Shop "
echo " 2 - Metasploitable 2 "
echo " 3 - Damn Vulnerable Web App"
echo " 4 - BWapp "
echo " 5 - WebGoat "

read -p 'What do you choose?' APP

if [ $APP -eq 1 ] 
then
	echo "Starting Juice Shop"
docker run -it -d --name juice_shop bkimminich/juice-shop /bin/bash
elif [ $APP -eq 2 ]
       echo "Starting Metasploitable 2"
docker run -it -d --name Metasploitable meknisa/metasploitable-base
elif [ $APP -eq 3 ]
	echo "Starting DVWA"
docker run -it -d --name DVWA vulnerables/web-dvwa
elif [ $APP -eq 4 ]
	echo "Starting BWAPP"
docker run -it -d --name BWAPP raesene/bwapp
elif [ $APP -eq 5 ]
	echo "Starting WebGoat"
docker run -it -d --name WebGoat webgoat/webgoat-8.0 
else 
	echo "None of your conditions met the critera.... FAIL"
fi
