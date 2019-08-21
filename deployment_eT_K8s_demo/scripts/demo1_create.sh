#!/bin/sh

echo "Creating easyTravel on demo1"
./setup_demo1.sh
./create.sh

echo "Exposing easyTravel"
#!kubectl create -f easytravel-pluginservice-service-demo1.yaml
kubectl create -f easytravel-backend-service-demo1.yaml
kubectl create -f easytravel-frontend-service-demo1.yaml
echo "Waiting for 150 seconds before starting loadgen"
sleep 150
kubectl create -f loadgen-deployment-demo1.yaml
