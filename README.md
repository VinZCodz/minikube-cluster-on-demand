# 🏗️ minikube-cluster-on-demand
Instant Single node Kubernetes cluster inside your GitHub Codespaces.

## ⚡ Quick Start Guide
- Press ```,``` (comma) on this repo --> Click ```Create new codespace```
  
Boom! Your cluster is ready in minutes.

## 🚀 The 30-Second "Hello World"
- Launch the Dashboard:
  - In a new terminal, run: ```minikube dashboard``` (Note: Keep this terminal open! It acts as the bridge to your GUI)
- Access the "Breathing" GUI:
  - GitHub will auto-forward the Dashboard port (e.g., 45637). Open it from the PORTS tab.
  - If you see JSON "Paths," simply append this exact string to your browser's address bar to reveal the visual dashboard:
    ```api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/```
- Power up the Gateway
  - The Gateway API is ready for your manifests! To route traffic from your browser to your pods, run this in a separate terminal: ```minikube tunnel```
- Test the Demo App
  - See the Gateway API in action immediately: ```kubectl apply -f examples/all-in-one.yaml```


## 🎯 Why this Template?

- Zero-Config: Skip the 20-minute minikube start and CRD manual installs.
- Modern Networking: Pre-loaded with the Kubernetes Gateway API (the successor to Ingress).
- Resource Light: Fine-tuned to run smoothly on GitHub's 2-core / 8GB RAM basic tier.
- Visual-First: Built-in support for the Kubernetes Dashboard to see your "breathing" pods live.

## 🌟 Support the Project
If this one-click Minikube setup saved you 30 minutes of YAML-wrangling today, please:
- Star this repo to help others find it! ⭐️
- Fork it and build your own Gateway API experiments. 🍴
- Share it on [LinkedIn & tag me!](https://www.linkedin.com/in/vinay-hm/)  🐦

## 🤝 Contribute & Support
Found a bug or have a better way to optimize for 2-core machines? Open an Issue or submit a Pull Request. Let's make the "Instant K8s" experience even faster together!

---

**Use for Dev | Test | CI/CD Actions | Practice | Basically a throw away cluster after use!**

---

Go ahead, give it a spin! 🚀
