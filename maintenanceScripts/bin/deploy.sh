#!/usr/bin/env bash


#Building
echo "Building..."
cd ../.. ;
mvn clean install package ;
cd target ;

echo -n "Copying to working folder..."
#Copying jar to folder on disk
cp ./Piccashop-1.0.0.jar /applications/piccashop/piccashop.jar ;
chmod a+x /applications/piccashop/piccashop.jar ;
cp ../demo_com_2018.jks /applications/piccashop/

echo -n "Finished!"