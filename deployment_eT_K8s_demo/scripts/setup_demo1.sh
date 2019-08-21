#!/bin/sh

echo "Running setup for demo1"
#!./setup_base.sh
kubectl config set contexts.default-context.namespace demo-live-1
