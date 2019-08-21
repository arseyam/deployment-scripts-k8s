#!/bin/sh

echo "Creating easyTravel"
kubectl create -f easytravel-mongodb-deployment.yaml
kubectl create -f easytravel-mongodb-service.yaml
#!kubectl create -f easytravel-pluginservice-deployment.yaml
kubectl create -f easytravel-backend-deployment.yaml
kubectl create -f easytravel-frontend-deployment.yaml
