#!/bin/bash

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb

minikube start

alias kubectl="minikube kubectl --"

kubectl apply -f mongo.yaml
kubectl apply -f webapp.yaml
kubectl apply -f mongo-secret.yaml
kubectl apply -f mongo-config.yaml
kubectl get all
minikube ip
