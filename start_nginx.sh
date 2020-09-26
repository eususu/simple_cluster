#!/bin/bash

pushd $PWD
cd nginx
docker-compose up --build 

popd
