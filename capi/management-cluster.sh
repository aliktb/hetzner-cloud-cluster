#!/usr/bin/env bash

# Create a cluster with Kind
kind create cluster --name caph-mgt-cluster

# Initialize it
clusterctl init --core cluster-api --bootstrap kubeadm --control-plane kubeadm --infrastructure hetzner

# Create secret using 
kubectl create secret generic hetzner --from-env-file=.env

kubectl patch secret hetzner -p '{"metadata":{"labels":{"clusterctl.cluster.x-k8s.io/move":""}}}'
