#!/usr/bin/env bash

sudo kill `sudo lsof -t -i:8080`
sudo kill `sudo lsof -t -i:9092`