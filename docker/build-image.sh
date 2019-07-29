#!/bin/sh
pushd ..
npm install
./gradlew assemble
popd
mkdir -p build
cp ../build/libs/*.jar build/
docker build -t ellinj/willitconnect .
docker push ellinj/willitconnect 
