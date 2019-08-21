#!/bin/sh

echo "Deleting easyTravel on demo1"
./setup_demo1.sh
./delete.sh

echo "Deleting exposure and traffic generator"
kubectl delete -f loadgen-deployment-demo1.yaml
kubectl delete -f easytravel-frontend-service-demo1.yaml
kubectl delete -f easytravel-backend-service-demo1.yaml
#!kubectl delete -f easytravel-pluginservice-service-demo1.yaml

