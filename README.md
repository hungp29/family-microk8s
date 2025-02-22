# Family Server Microk8s

### 1. Run the setup.sh file to setup the microk8s

```
sudo chmod +x setup.sh
sudo sh setup.sh
```

### 2. Setup `cert-manager` and `nginx`

#### Setup `cert-manager`

Run following command to enable `cert-manager` addon
```
microk8s enable cert-manager
```

And apply to production environment by run this command

```
microk8s kubectl apply -f ./cert-manager/prod.yaml
```

#### Setup `nginx`

```
microk8s enable ingress
```

### Deploy `whoami` application to testing


Run following command to deploy a simple `whoami` application

```
microk8s kubectl apply -f ./whoami/whoami.yaml
```

To undeploy `whoami` application, please run following command

```
microk8s kubectl delete -f ./whoami/whoami.yaml
```

### 3. Deploy `argocd`

#### Install argocd

```
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```

Apply `ingress` for argocd

```
kubectl apply -f ./cert-manager/argocd/argocd-ingress.yaml
```