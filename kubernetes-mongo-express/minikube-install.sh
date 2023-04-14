#!/bin/bash

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb

minikube start

alias kubectl="minikube kubectl --"

kubectl apply -f mongo-deployment.yaml
kubectl apply -f mongo-configmap.yaml
kubectl apply -f mongo-express.yaml
kubectl apply -f mongo-secret.yaml

kubectl get all


minikube service mongo-express-service
