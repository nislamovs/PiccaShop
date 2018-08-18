#!/usr/bin/env bash

chmod a+x ./* ;

./stop_n_remove_containers.sh ;
./build.sh ;
./stop_n_remove_containers.sh ;
./import_image.sh ;
./run.sh ;

echo "Check url : https://localhost:8080/piccashop/ "