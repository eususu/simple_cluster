#!/bin/bash


pushd $PWD
cd tomcat
sudo docker-compose up --build

popd


