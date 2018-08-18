#!/usr/bin/env bash

#Pass root pass as param
PASSWORD=$1

#Stopping existing service
echo -n "Stopping existing service..."
$(echo "$PASSWORD" | sudo -S service piccashop stop &2>/dev/null) ;
RESPONSE=$(echo "$PASSWORD" | sudo -S service piccashop status | grep "Stopped Piccashop Service." &2>/dev/null) ;
if [[ !  -z  $RESPONSE  ]]
then
    echo -ne "OK! \n" ;
else
    echo -ne "FAILED! \n" ;
    exit 1 ;
fi
RESPONSE=""

#Building
echo "Building..."
cd ../.. ;
mvn clean install package ;
cd target ;

echo -n "Copying to working folder..."
#Copying jar to folder on disk
cp ./Piccashop-1.0.0.jar /applications/piccashop/piccashop.jar ;
chmod a+x /applications/piccashop/piccashop.jar ;
cp ../demo_com_2018.jks /applications/piccashop/ ;
echo -ne "Finished! \n"

echo -n "Starting..." ;
echo "$PASSWORD" | sudo -S service piccashop start &2> /dev/null ;
echo -ne "OK! \n" ;

#We need to wait for some time to let the service start completely.
sleep 5 ;


echo -ne "\nProbecheck... " ;
RESPONSE=$(echo "$PASSWORD" | sudo -S service piccashop status | grep "Started Piccashop Service." &2> /dev/null) ;
if [[ !  -z  $RESPONSE  ]]
then
    echo -ne "OK! \n" ;
else
    echo -ne "FAILED! \n" ;
    exit 2 ;
fi