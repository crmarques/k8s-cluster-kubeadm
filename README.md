# Create a Kubernetes cluster using kubeadm

## Pre-requisites

- Vagrant
- Virtualbox

## Create the machines: 1 master and 2 nodes

´´´bash
cd k8s-cluster-kubeadm
vagrant up
´´´

## Enter the master node

´´´bash
vagrant ssh master
´´´

and execute the following command:

´´´bash
/vagrant/provision-scripts/setup-master.sh
´´´

## Check the master node output looking for the following string:

´´´bash
kubeadm join --token <token> <master-ip>:<master-port> --discovery-token-ca-cert-hash sha256:<hash>
´´´

and, for each node, execute the following command:

´´´bash
/vagrant/provision-scripts/setup-node.sh <token> <hash>
´´´

## Check the setup executing the following command in the master node:

´´´bash
kubectl get nodes
´´´
