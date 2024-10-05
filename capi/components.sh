#!/usr/bin/env bash

# Install CSI
helm repo add cilium https://helm.cilium.io/

helm upgrade --install cilium cilium/cilium --version 1.14.4 \
--namespace kube-system \
-f templates/cilium/cilium.yaml

# Install CCM
helm repo add hcloud https://charts.hetzner.cloud
helm repo update hcloud

helm upgrade --install hccm hcloud/hcloud-cloud-controller-manager \
        --namespace kube-system \
        --set env.HCLOUD_TOKEN.valueFrom.secretKeyRef.name=hetzner \
        --set env.HCLOUD_TOKEN.valueFrom.secretKeyRef.key=hcloud \
        --set privateNetwork.enabled=false
