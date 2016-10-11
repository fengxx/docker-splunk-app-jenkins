#!/bin/sh
if [ "$1" == "-d" ];then
docker-compose --project-name dev -f src.yml up --build 
else
docker-compose --project-name demo up
fi

