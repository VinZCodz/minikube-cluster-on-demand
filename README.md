# 🏗️ minikube-cluster-on-demand
Instant Single node Kubernetes cluster inside your GitHub Codespaces.

## ⚡ Quick Start Guide
- Press ```,``` (comma) on this repo --> Click ```Create new codespace```
  
Boom! Your cluster is ready in minutes.
  
  <img width="400" height="39" alt="image" src="https://github.com/user-attachments/assets/c80dc516-59ef-47f9-8486-0cc3e1889a1d" />


## 🚀 The 30-Second "Hello World"
- Launch the Dashboard:
  - In a new terminal, run: ```minikube dashboard``` (Note: Keep this terminal open! It acts as the bridge to your GUI)
- 🎨 Access the "Breathing" GUI:
  - Go to the Ports tab in your Codespace and Click the Globe Icon 🌐 ```Open in Browser```
    
    <img width="900" height="224" alt="image" src="https://github.com/user-attachments/assets/4a6e877d-eb75-4f06-a4ab-c527ce2d77ba" />
    
  - If you see JSON "Paths," simply append this exact string to your browser's address bar to reveal the visual dashboard:
    ```/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/```
    
    
- Power up the Gateway
  - The Gateway API is ready for your manifests! To route traffic from your browser to your pods, run this in a separate terminal: ```minikube tunnel```
- Test the Demo App
  - See the Gateway API in action immediately: ```kubectl apply -f examples/all-in-one.yaml```
    
    <img width="900" height="900" alt="image" src="https://github.com/user-attachments/assets/d9e8c210-1998-4a6e-958d-dc446046fd22" />


## 🎯 Why this Template?

- Zero-Config: Skip the 20-minute minikube start and CRD manual installs.
- Modern Networking: Pre-loaded with the Kubernetes Gateway API (the successor to Ingress).
- Resource Light: Fine-tuned to run smoothly on GitHub's 2-core / 8GB RAM basic tier.
- Visual-First: Built-in support for the Kubernetes Dashboard to see your "breathing" pods live.
  
  <img width="900" height="78" alt="image" src="https://github.com/user-attachments/assets/915c89e6-3a4f-4fb0-8553-f219c66b4008" />

---

--| **Use for Dev | Test | CI/CD Actions | Practice | Basically a throw away cluster after use!** |--

---
## 🌟 Support the Project
If this one-click Minikube setup saved you 30 minutes of YAML-wrangling today, please:
- Star this repo to help others find it! ⭐️
- Fork it and build your own Gateway API experiments. 🍴
- Share it on [LinkedIn & tag me!](https://www.linkedin.com/in/vinay-hm/)  🐦

## 🤝 Contribute & Support
Found a bug or have a better way to optimize for 2-core machines? Open an Issue or submit a Pull Request. Let's make the "Instant K8s" experience even faster together!



Go ahead, give it a spin! 🚀
