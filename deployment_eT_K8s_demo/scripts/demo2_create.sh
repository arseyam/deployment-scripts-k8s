#!/bin/sh

echo "Creating easyTravel on demo2"
./setup_demo2.sh
./create.sh

echo "Exposing easyTravel"
kubectl create -f easytravel-pluginservice-service-demo2.yaml
kubectl create -f easytravel-backend-service-demo2.yaml
kubectl create -f easytravel-frontend-service-demo2.yaml
echo "Waiting for 150 seconds before starting loadgen"
sleep 150
kubectl create -f loadgen-deployment-demo2.yaml
