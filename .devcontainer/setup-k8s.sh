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
  --set gateway.infrastructure.enabled=true \
  --set gateway.namespacePolicy=All

minikube addons enable dashboard
minikube addons enable metrics-server

kubectl port-forward svc/traefik -n traefik-v3 8080:80 --address='0.0.0.0' > /dev/null 2>&1 &

echo "--------------------------------------------------------"
echo "🚀 CLUSTER IS LIVE!"
echo "1. Run: 'minikube dashboard' to see your pods."
echo "2. Run: 'minikube tunnel' in a new tab to enable the Gateway."
echo "3. Run: 'kubectl apply -f examples/all-in-one.yaml' to test."
echo "--------------------------------------------------------"
