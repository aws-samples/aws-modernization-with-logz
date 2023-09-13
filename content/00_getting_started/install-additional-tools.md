---
title: "Install Additional Tools"
weight: 18
---

For the duration of the workshop we will be utilizing a couple of extra tools. You can ether execute the following command to Install

- eksctl
- helm
- helmfile
- highlighter
- kubectl

```bash
$ cd ~/
$ git clone https://github.com/logzio/logz-io-observability-workshop-code.git
$ cd logz-io-observability-workshop-code/01-setup

$ ./install.sh

```

Or you can install each tool manually.

### Kubectl

```bash
$ curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo mv kubectl /usr/local/bin/
sudo chmod +x /usr/local/bin/kubectl
```

### helm

Install helm

```
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
```

### helmfile

```
curl -sSL https://github.com/roboll/helmfile/releases/latest/download/helmfile_$(uname -s | tr '[:upper:]' '[:lower:]')_amd64 -o helmfile && \
chmod +x helmfile && \
sudo mv helmfile /usr/local/bin/

```

### eksctl

```
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
```
