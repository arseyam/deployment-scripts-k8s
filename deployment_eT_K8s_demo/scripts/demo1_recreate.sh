#!/bin/sh

echo "Recreating easyTravel on demo1"
./setup_demo1.sh
./delete.sh
kubectl delete -f loadgen-deployment-demo1.yaml
kubectl delete -f easytravel-frontend-service-demo1.yaml
kubectl delete -f easytravel-backend-service-demo1.yaml
echo "Waiting for 120 seconds"
sleep 120
./create.sh
kubectl create -f easytravel-backend-service-demo1.yaml
kubectl create -f easytravel-frontend-service-demo1.yaml
echo "Waiting for 150 seconds before starting loadgen"
sleep 150
kubectl create -f loadgen-deployment-demo1.yaml
