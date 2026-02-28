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

### 🎨 Access the GUI
  
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

## 🎯 Why this Template?

- Zero-Config: Skip the 20-minute minikube start and CRD manual installs.
- Modern Networking: Pre-loaded with the Kubernetes Gateway API (the successor to Ingress).
- Resource Light: Fine-tuned to run smoothly on GitHub's 2-core / 8GB RAM basic tier.
- Visual-First: Built-in support for the Kubernetes Dashboard to see your "breathing" pods live.

## 🤝 Contribute & Support
Found a bug? Nothing is perfect! Please report it or raise a PR—I’ll review it as soon as possible.

If this helped your workflow, feel free to Star ⭐ and Fork 🍴 the repo to show your support!

💡 Tip: If the Dashboard shows a "Service Unavailable" error initially, wait 60 seconds. On 2-core machines, the metrics-server and dashboard pods need a moment to "breathe" before the proxy can connect.

---

**Use for Dev | Test | CI/CD Actions | Practice | Basically a throw away cluster after use!**

---

Go ahead, give it a spin! 🚀
