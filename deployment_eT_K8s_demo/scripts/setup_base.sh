#!/bin/sh
TOKEN=${K8S_TOKEN:-<or fill this token>} 

kubectl config set-credentials myself --token=${TOKEN}
kubectl config set-cluster lab --server=https://putinserver 
kubectl config set-context default-context --cluster=lab --user=myself
kubectl config use-context default-context
