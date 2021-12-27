#!/bin/bash
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC='--flannel-backend=none' sh -s - --write-kubeconfig-mode 644
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
curl -s https://raw.githubusercontent.com/accuknox/tools/main/install.sh | bash
kubectl apply -f https://raw.githubusercontent.com/kubearmor/KubeArmor/main/examples/wordpress-mysql/wordpress-mysql-deployment.yaml
