#!/bin/sh

echo "Running setup for demo2"
#!./setup_base.sh
kubectl config set contexts.default-context.namespace demo-live-2
