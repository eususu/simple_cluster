#!/bin/bash

pushd $PWD
cd nginx
sudo docker-compose up --build 

popd
