#!/usr/bin/env bash


#Build image
cd ../.. ;
mvn clean install package docker:build #> maintenanceScripts/dockerSetup/output.txt

#Saving docker image to file:
docker image save -o target/docker/piccashop.tar c70f09de30c3e07e635b642c164b23/piccashop

#Push image to repo
#mvn docker:push