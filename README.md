# 🏗️ minikube-cluster-on-demand
Instant Single node Kubernetes cluster inside your GitHub Codespaces.

## ⚡ Quick Start Guide
- Press ```,``` (comma) on this repo —> Click ```Create new codespace```
  
Boom! Your cluster is ready in minutes.
<p align="center">
  <img width="400" height="39" alt="image" src="https://github.com/user-attachments/assets/c80dc516-59ef-47f9-8486-0cc3e1889a1d" />
</p>

## 🎨 Access the "Breathing" GUI:
- Run this command in a new terminal (keep it open): ```minikube dashboard --port=9090```
- Go to the Ports tab and Click the Globe Icon 🌐 ```Open in Browser``` at Port 9090.       
  - If you see JSON "Paths," simply append this exact string to your browser's address bar to reveal the visual dashboard:
    ```/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/```

  <img width="900" height="900" alt="image" src="https://github.com/user-attachments/assets/d9e8c210-1998-4a6e-958d-dc446046fd22" />

## 🚀 The 30-Second to "Hello World"

- Deploy the Demo App from examples ```kubectl apply -f examples/all-in-one.yaml```
- Check Running pods ```kubectl get pods``` 
- Power up the Gateway ```kubectl port-forward service/traefik -n traefik-v3 8000:80```
    
## 🎯 Why this Template?

- Zero-Config: Skip the 20-minute minikube start and CRD manual installs.
- Modern Networking: Pre-loaded with the Kubernetes Gateway API (the successor to Ingress).
- Resource Lite: Fine-tuned to run smoothly on GitHub's 2-core / 8GB RAM basic tier.
<p align="center">
  <img width="900" height="78" alt="image" src="https://github.com/user-attachments/assets/915c89e6-3a4f-4fb0-8553-f219c66b4008" />
</p>


- Visual-First: Built-in support for the Kubernetes Dashboard to see your "breathing" pods live.

## 🌟 Support the Project
If this one-click Minikube setup saved you 30 minutes of YAML-wrangling today, please:
- Star this repo to help others find it! ⭐️
- Fork it and build your own Gateway API experiments. 🍴
- Share it on [LinkedIn & tag me!](https://www.linkedin.com/in/vinay-hm/)  🐦

## 🤝 Contribute & Support
Found a bug or have a better way to optimize for 2-core machines? Open an Issue or submit a Pull Request. Let's make the "Instant K8s" experience even faster together!

---

<p align="center">
  Use for Dev | Test | CI/CD Actions | Practice | Basically a throw away cluster after use!
  <img width="408" height="59" alt="image" src="https://github.com/user-attachments/assets/f4245975-7ec9-4926-b68d-d54acf888129" />
</p>
<p align="center">
  Go ahead, give it a spin! 🚀
</p>

