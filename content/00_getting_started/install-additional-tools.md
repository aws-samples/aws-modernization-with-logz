---
title: "Install Additional Tools"
weight: 18
---

For the duration of the workshop we will be utilizing a couple of extra tools:

- **eksctl** for spinning up the EKS cluster
- **kubectl** for interacting with the cluster
- **helm** for deploying applications

Let's install all of them in our Cloud9 environment.

### eksctl

```bash
$ curl --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
$ sudo mv /tmp/eksctl /usr/local/bin
```

### kubectl

```bash
$ curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
$ sudo mv kubectl /usr/local/bin/
```
#### Add permissions to kubectl:
```bash
$ sudo chmod +x /usr/local/bin/kubectl
```

### helm

```bash
$ curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
```
