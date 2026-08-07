#!/bin/bash

set -e


NAMESPACE="default"


echo "Deploying application to Kubernetes..."


kubectl apply -k ../kubernetes/base \
-n $NAMESPACE


echo "Checking deployment status..."


kubectl get pods -n $NAMESPACE


echo "Deployment completed successfully"
