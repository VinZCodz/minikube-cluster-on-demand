# 🏗️ minikube-cluster-on-demand
Instant Single node Kubernetes cluster inside your GitHub Codespaces.

## ⚡ Quick Start

- Should be Logged into Github —> Press ```,``` (comma) on this repo —> Click ```Create new codespace```

_Boom! Your cluster is ready in minutes!_

<p align="center">
<img width="900" height="300" alt="image" src="https://github.com/user-attachments/assets/a92ab1a7-1afd-47b7-aa45-5afab757769c" />
</p>

## 🎨 Access the "Breathing" GUI:
- Run this command in a new terminal (keep it open): ```minikube dashboard --port=9090```
- UI is Ready: Go to ```Ports``` > Port 9090 > ```Open in Browser 🌐```.     
  - If you see JSON "Paths," simply append this exact string to your browser's address bar to reveal the visual dashboard:
    ```/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/```

_Done! You wasted NO time on local setup. You've a fully working cluster, up and running!_

<p align="center">
<img width="900" height="900" alt="image" src="https://github.com/user-attachments/assets/d9e8c210-1998-4a6e-958d-dc446046fd22" />
</p>

## 🛜 Modern Networking via Gateway API (Optional)
North-South traffic is managed through the Kubernetes Gateway API, which is enabled and preconfigured in your cluster. 

- Use the provided example listener: ```kubectl apply -f examples/Gateway.yaml```
- Or, **create custom Gateway** listeners to define specific ports, protocols, and routing rules for your services.

<p align="center">
 <img width="400" height="75" alt="image" src="https://github.com/user-attachments/assets/ea4c566b-d323-40a1-858a-c93ec7e4ef1c" />
</p>

## 🚀 Deploy "Hello World" Demo App in 30 sec inside cluster! (Optional)

- Deploy ```kubectl apply -f examples/all-in-one.yaml```
- Check Running pods ```kubectl get pods -n traefik-v3 ``` 
- Power up the Gateway ```kubectl port-forward service/traefik -n traefik-v3 8080:80``` & Head to Port 8080. Hello World!
- **Important!** End the port forward ```ctrl+c``` & Delete the app when done ```kubectl delete -f examples/all-in-one.yaml``` to free the port for your app use.

## 🎯 Why this Template?
- ```Zero-Config```: Skip the hassel of manual setup. Just get to your work!
- ```Modern Networking```: Pre-loaded with the Kubernetes Gateway API (the successor to Ingress).
- ```Helm Ready```: Native support for Helm charts to deploy your apps instantly, remote!
- ```Visual-First, GUI```: Kubernetes UI Dashboard pre-configured to see your "breathing" pods live!
- ```Free```: Codespace is free upto $10 per month! Enough to play around and implement something cool in the cluster.
- ```Zero-Footprint```: No local install, no junk, no risk. Delete when done.
- ```Fully Open```: No black boxes. Leverage IaC-powered open-source infrastructure you can customize and control.

<p align="center">
  <img width="900" height="78" alt="image" src="https://github.com/user-attachments/assets/915c89e6-3a4f-4fb0-8553-f219c66b4008" />
</p>

## 🛠️ Handy Commands

- To Stop Cluster: ```minikube stop```
- To Start Cluster: ```minikube start```
- Cluster/Endpoints frozen: ```docker restart $(docker ps -q)```
  
## 🌟 Support the Project
If this one-click Minikube setup saved you hassles of YAML-wrangling today, please:
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

