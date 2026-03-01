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

sleep 5

minikube addons enable dashboard
minikube addons enable metrics-server

echo "Launching Dashboard & Tunnel in background..."
minikube dashboard --port=9090 2>&1 &
minikube tunnel > /dev/null 2>&1 &

sleep 5

nohup kubectl port-forward svc/traefik -n traefik-v3 8080:80 --address='0.0.0.0' > /dev/null 2>&1 &

echo "--------------------------------------------------------"
echo "🚀 CLUSTER IS LIVE!"
echo "🎨 DASHBOARD: Go to the Ports tab and Click the Globe Icon 🌐 'Open in Browser' on 9090 port"
echo "🔗 MAGIC URL: Add this to the end of the Dashboard URL in the browser:"
echo "   /api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/"
echo "🚀 APP: Port 8080 is already bridged via the tunnel!"
echo ""
echo "Run: 'kubectl apply -f examples/all-in-one.yaml' to test."
echo "--------------------------------------------------------"
