#! /bin/bash

TOKEN=$1
HASH=$2

sudo kubeadm join --token $TOKEN master:6443 --discovery-token-ca-cert-hash sha256:$HASH
