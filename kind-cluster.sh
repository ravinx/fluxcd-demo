#!/bin/bash

KUBERNETES_VERSION_IMAGE="kindest/node:v1.32.0"
KUBERNETES_CLUSTER_NAME="dev-cluster"
KUBERNETES_CLUSTER_CONFIG_PATH="$HOME/.kube/config"

kind create cluster --name $KUBERNETES_CLUSTER_NAME --config kind-config.yaml --image $KUBERNETES_VERSION_IMAGE
kubectl cluster-info --context kind-$KUBERNETES_CLUSTER_NAME
kubectl config use-context kind-$KUBERNETES_CLUSTER_NAME
