#!/bin/bash
set -e

echo "Waiting for Docker..."
until docker ps >/dev/null 2>&1; do sleep 2; done

echo "Starting Minikube..."
minikube start --driver=docker

echo "Installing Traefik with Gateway API enabled..."
helm repo add traefik https://traefik.github.io/charts
helm repo update
helm upgrade --install traefik traefik/traefik \
  --namespace traefik-v3 --create-namespace \
  --set providers.kubernetesGateway.enabled=true \
  --set gateway.namespacePolicy=All

minikube addons enable dashboard
minikube addons enable metrics-server

echo "Cluster setup complete! Start the dashboard: minikube dashboard"
