#!/bin/sh

echo "Deleting easyTravel on demo2"
./setup_demo2.sh
./delete.sh

echo "Deleting exposure and traffic generator"
kubectl delete -f easytravel-frontend-service-demo2.yaml
kubectl delete -f easytravel-backend-service-demo2.yaml
kubectl delete -f easytravel-pluginservice-service-demo2.yaml
kubectl delete -f loadgen-deployment-demo2.yaml
