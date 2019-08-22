#!/bin/sh

echo "Creating easyTravel"
./setup_easytravel.sh
./create.sh

echo "Exposing easyTravel"
kubectl create -f easytravel-backend-service.yaml
kubectl create -f easytravel-frontend-service.yaml
echo "Waiting for 150 seconds before starting loadgen"
sleep 150
kubectl create -f easytravel-loadgen-deployment.yaml
