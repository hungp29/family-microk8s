# Family Server Microk8s

### 1. Run the setup.sh file to setup the microk8s

```
sudo chmod +x setup.sh
sudo sh setup.sh
```

### 2. Setup `cert-manager` and `nginx`

#### Setup `cert-manager`

Run following command

```
microk8s kubectl apply -f ./cert-manager/prod.yaml
```
