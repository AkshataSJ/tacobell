#!/bin/sh

if [ $ENVIRONMENT = "DEP2" ];
then
sshpass -p "dev2team" scp target/tacobell.war dev2team@172.17.0.3:/home/dev2team/distros/apache-tomcat/webapps
         echo "Starting tomcat server in $i QA server"
         sleep 3
sshpass -p "dev2team" ssh dev2team@172.17.0.3 "JAVA_HOME=/home/dev2team/jdk1.8.0_181"/home/dev2team/distros/apache-tomcat/bin/startup.sh

elif [ $ENVIRONMENT= "DEP3" ] 
then


sshpass -p "dev3team" scp target/tacobell.war dev3team@172.17.0.2:/home/dev3team/distros/apache-tomcat/webapps
         echo "Starting tomcat server in $i QA server"
         sleep 3
sshpass -p "dev3team" ssh dev3team@172.17.0.2 "JAVA_HOME=/home/dev3team/distros/jdk1.8"/home/dev3team/distros/apache-tomcat/bin/startup.sh







fi


