#!/bin/bash

minikube start

minikube status

k get all

kubectl create deployment nginx-deployment --image=nginx --port=80

k get pods
# NAME    READY   STATUS    RESTARTS   AGE
# nginx   1/1     Running   0          68s

k expose deployment nginx-deployment --type=LoadBalancer --name=nginx-http

k get svc  # k get services

minikube service nginx-http

# scale pod replication
k scale deployment nginx-deployment --replicas=3

k get all

# detail information obout object
k get pods -o wide

k describe pod {pod name}

# open minikube dashboard
minikube dashboard