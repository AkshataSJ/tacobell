#!/bin/sh
#

if [ $ENVIRONMENT = "QA" ];then
sshpass -p "ccd" scp target/tacobell.war ccd@172.17.0.5:/home/ccd/distros/apache-tomcat/webapps
         echo "Starting tomcat server in $i QA server"
         sleep 3
sshpass -p "ccd" ssh ccd@172.17.0.5 "JAVA_HOME=/home/gamutp/jdk1.8.0_181"/home/ccd/distros/apache-tomcat/bin/startup.sh

elif [$ENVIRONMENT= "SIT"] 

then


sshpass -p "dev2team" scp target/tacobell.war dev2team@172.17.0.4:/home/dev2team/distros/apache-tomcat/webapps
         echo "Starting tomcat server in $i QA server"
         sleep 3
sshpass -p "dev2team" ssh dev2team@172.17.0.4 "JAVA_HOME=/home/dev2team/distros/jdk1.8"/home/dev2team/distros/apache-tomcat/bin/startup.sh



fi


