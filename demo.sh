#!/bin/sh
echo "will create a demo folder"
mkdir demo && cd $_
docker_compse_file="https://raw.githubusercontent.com/fengxx/docker-splunk-app-jenkins/master/docker-compose.yml"
echo "will download $docker_compse_file"
if curl -V >/dev/null 2>&1 ;then
  curl $docker_compse_file -o docker-compose.yml
elif wget -V >/dev/null 2>&1 ; then
	wget $docker_compse_file
else
	echo "please download the file $docker_compse_file and run: docker-compose up"
	exit -1
fi
docker-compose up
echo Access http://localhost:8080 for Jenkins, and http://localhost:8000 for Splunk
