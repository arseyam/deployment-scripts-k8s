#!/bin/sh

echo "Running setup"
#!./setup_base.sh

kubectl create namespace easyTravel
#!kubectl config use-context demo-live-1
#!kubectl config set contexts.default-context.namespace demo-live-1
