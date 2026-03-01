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

sleep 5

minikube addons enable dashboard
minikube addons enable metrics-server

echo "--------------------------------------------------------"
echo "🚀 CLUSTER IS LIVE!"
echo "1. Run: 'minikube dashboard --port=9090' to see your pods on K8S UI."
echo "2. Run: 'kubectl apply -f examples/all-in-one.yaml' to deploy sample Hello World app."
echo "3. Check Running pods: 'kubectl get pods'
echo "4. Forward Port: 'kubectl port-forward service/traefik -n traefik-v3 8000:80'
echo "--------------------------------------------------------"
