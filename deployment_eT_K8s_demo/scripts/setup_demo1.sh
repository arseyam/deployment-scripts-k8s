#!/bin/sh

echo "Running setup for demo1"
#!./setup_base.sh

#!kubectl create namespace demo-live-1
#!kubectl config use-context demo-live-1
kubectl config set contexts.default-context.namespace demo-live-1
