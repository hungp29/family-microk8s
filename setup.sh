#!/bin/bash
sudo apt update
sudo apt upgrade
# sudo apt install snapd -y
# snap version
# sudo snap install microk8s --classic --channel=1.25
# sudo usermod -a -G microk8s $USER
# sudo chown -f -R $USER ~/.kube
# su - $USER
microk8s status --wait-ready
alias kubectl='microk8s kubectl'
kubectl cluster-info

microk8s enable dns
microk8s enable ingress
microk8s enable cert-manager
microk8s enable hostpath-storage

microk8s kubectl get all --all-namespaces
microk8s kubectl get nodes
