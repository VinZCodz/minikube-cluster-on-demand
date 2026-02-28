# 🏗️ minikube-cluster-on-demand
Instant Single node Kubernetes cluster inside your GitHub Codespaces.

## ⚡ Quick Start Guide
- Press ```,``` (comma) on this repo --> Click ```Create new codespace```
  
Boom! Your cluster is ready in minutes.

### Launch the Dashboard
Once the setup script finishes, in a new terminal, run:
```
minikube dashboard
```

### Access the GUI
  
GitHub will provide a link to a port like 45637. Open it.
If you see a list of "Paths" (JSON), you are looking at the API. Append the following path to the URL in your browser address bar:
```
api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/
```
### Deploy your Gateway
The Gateway API is ready. You can now apply your Gateway and HTTPRoute manifests. To reach your apps, on a new terminal, remember to run:
```
minikube tunnel
```
### Important Note on minikube dashboard
In Codespaces, minikube dashboard behaves exactly like a proxy. It will stay running in your terminal and "hang." This is normal—it’s keeping the tunnel to the GUI alive.
