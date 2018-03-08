# Create a Kubernetes cluster using kubeadm

## Pre-requisites

- Vagrant
- Virtualbox

## Create the machines: 1 master and 2 nodes

```
cd k8s-cluster-kubeadm
vagrant up
```

## Setup master node

```
vagrant ssh master
```

and execute the following command:

```
/vagrant/provision-scripts/setup-master.sh
```

## Setup slave nodes

Check the master node output looking for the following string:

```
kubeadm join --token <token> <master-ip>:<master-port> --discovery-token-ca-cert-hash sha256:<hash>
```

and, for each node, execute the following command:

```
/vagrant/provision-scripts/setup-node.sh <token> <hash>
```

## Check configuration

Check the setup executing the following command in the master node:

```
kubectl get nodes
```
