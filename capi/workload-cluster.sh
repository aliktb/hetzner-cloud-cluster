#!/usr/bin/env bash

# Generate the manifests defining a workload cluster, and apply them to the bootstrap cluster
clusterctl generate cluster hetzner-cluster --kubernetes-version v1.31.1 > hetzner-cluster.yaml

kubectl -n caph-system rollout status deployment caph-controller-manager

kubectl apply -f hetzner-cluster.yaml

# Get the kubeconfig for this new cluster
clusterctl get kubeconfig hetzner-cluster > hetzner-cluster-kubeconfig.yaml
