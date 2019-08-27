#!/bin/sh

kubectl create secret generic pypi-server-auth --from-file auth

kubectl apply -f storage/pypi-server.yml
kubectl apply -f deployments/pypi-server.yml
kubectl apply -f services/pypi-server.yml
kubectl apply -f ingress/pypi-server.yml

