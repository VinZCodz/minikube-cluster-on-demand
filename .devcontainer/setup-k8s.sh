#!/bin/bash
set -e

echo "Waiting for Docker..."
until docker ps >/dev/null 2>&1; do sleep 2; done

echo "Starting Starting Single-Node Minikube..."
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

echo "--------------------------------------------------------"
echo "✅ Cluster Setup Complete!"
echo "1. Run 'minikube dashboard' in this terminal."
echo "2. Click the 'Open in Browser' button in the popup."
echo "3. If you see JSON, append this to the URL:"
echo "   /api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/"
echo "--------------------------------------------------------"
