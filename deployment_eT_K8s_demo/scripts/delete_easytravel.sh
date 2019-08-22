#!/bin/sh

echo "Deleting easyTravel"
./setup_demo1.sh
./delete.sh

echo "Deleting exposure and traffic generator"
kubectl delete -f easytravel-loadgen-deployment.yaml
kubectl delete -f easytravel-frontend-service.yaml
kubectl delete -f easytravel-backend-service.yaml

