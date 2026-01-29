#!/usr/bin/env bash
set -euo pipefail

KIND_CLUSTER_NAME=${KIND_CLUSTER_NAME:-signalops-local}

kind create cluster --name "$KIND_CLUSTER_NAME" --config clusters/local/kind-config.yaml
kubectl create namespace signalops || true
kubectl create namespace observability || true
