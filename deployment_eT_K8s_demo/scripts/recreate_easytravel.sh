#!/bin/sh

echo "Recreating easyTravel"
./setup_demo1.sh
./delete.sh
kubectl delete -f easytravel-loadgen-deployment.yaml
kubectl delete -f easytravel-frontend-service.yaml
kubectl delete -f easytravel-backend-service.yaml
echo "Waiting for 120 seconds"
sleep 120
./create.sh
kubectl create -f easytravel-backend-service.yaml
kubectl create -f easytravel-frontend-service.yaml
echo "Waiting for 150 seconds before starting loadgen"
sleep 150
kubectl create -f easytravel-loadgen-deployment.yaml
