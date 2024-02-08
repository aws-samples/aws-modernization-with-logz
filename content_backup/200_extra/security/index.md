---
title: Security
sidebar_position: 20
sidebar_custom_props: { "module": true }
weight: 5
---

# Workload Scanning

In this lab we will deploy a container that is known to have a vulnerability and see everything in action.

You will perform:

- Create a deployment with `nginx:1.16` image
- Search for a specific CVE
- Update the deployment with `nginx:1.24` image
- Verify CVE no longer is present

It is important to note that even thought the report might detect some vulnerabilities. It does not mean that it must be acted upon immediately. That determination is to **your organizations** security posture and analysis of the vulnerabilities.

## Deploy a vulnerable container

Let's deploy the container via the following command:

```
$ kubectl apply -f https://raw.githubusercontent.com/devx/logz-io-observability-workshop-code/main/02-security/nginx-deployment.yaml?token=GHSAT0AAAAAACDDM64QYLKHLLCZH3UQZ6UAZDPTCXQ


deployment.apps/nginx-deployment created


```

let's verify that our container is running:

```shell
$ kubectl describe deployment nginx-deployment
Name:                   nginx-deployment
Namespace:              default
CreationTimestamp:      Thu, 11 May 2023 06:15:21 -0500
Labels:                 <none>
Annotations:            deployment.kubernetes.io/revision: 1
Selector:               app=nginx
Replicas:               1 desired | 1 updated | 1 total | 1 available | 0 unavailable
StrategyType:           RollingUpdate
MinReadySeconds:        0
RollingUpdateStrategy:  25% max unavailable, 25% max surge
Pod Template:
  Labels:  app=nginx
  Containers:
   nginx:
    Image:        nginx:1.16
    Port:         80/TCP
    Host Port:    0/TCP
    Environment:  <none>
    Mounts:       <none>
  Volumes:        <none>
Conditions:
  Type           Status  Reason
  ----           ------  ------
  Available      True    MinimumReplicasAvailable
  Progressing    True    NewReplicaSetAvailable
OldReplicaSets:  <none>
NewReplicaSet:   nginx-deployment-6f9dbcc988 (1/1 replicas created)
Events:
  Type    Reason             Age    From                   Message
  ----    ------             ----   ----                   -------
  Normal  ScalingReplicaSet  6m54s  deployment-controller  Scaled up replica set nginx-deployment-6f9dbcc988 to 1

```

Now that we have deploy our vulnerable nginx container we explore by selecting the `default` Namespace:
![nginx 1.16](/images/k8s360/logz-io-k8s360-nginx-pod.png)

We can view the CVE's by selecting the security tab, which will give us a list of vulnerabilities as shown below:
![nginx pod security tab ](/images/k8s360/logz-io-k8s360-nginx-pod-security-tab.png)

From here we can now explore the actual logs and look for specific in our case let's search for a CVE:`CVE-2022-37434`.
There are various way for us to do this the easies to just paste the cve in the search bar. This will return one vulnerability as seen below:

![CVE-2022-37434](/images/k8s360/logz-io-k8s360-nginx-pod-cve-present.png)

## Deploy updated image

```
k apply -f https://raw.githubusercontent.com/devx/logz-io-observability-workshop-code/main/02-security/nginx-deployment-fixed.yaml?token=GHSAT0AAAAAACDDM64RJHZPQU5PDGRWQKNWZDPTDAA
```

Verify that image is now `1.24.0`

```
$ kubectl describe deployment nginx-deployment
Name:                   nginx-deployment
Namespace:              default
CreationTimestamp:      Thu, 11 May 2023 06:15:21 -0500
Labels:                 <none>
Annotations:            deployment.kubernetes.io/revision: 2
Selector:               app=nginx
Replicas:               1 desired | 1 updated | 1 total | 1 available | 0 unavailable
StrategyType:           RollingUpdate
MinReadySeconds:        0
RollingUpdateStrategy:  25% max unavailable, 25% max surge
Pod Template:
  Labels:  app=nginx
  Containers:
   nginx:
    Image:        nginx:1.24.0
    Port:         80/TCP
    Host Port:    0/TCP
    Environment:  <none>
    Mounts:       <none>
  Volumes:        <none>
Conditions:
  Type           Status  Reason
  ----           ------  ------
  Available      True    MinimumReplicasAvailable
  Progressing    True    NewReplicaSetAvailable
OldReplicaSets:  <none>
NewReplicaSet:   nginx-deployment-5c46dbdf89 (1/1 replicas created)
Events:
  Type    Reason             Age   From                   Message
  ----    ------             ----  ----                   -------
  Normal  ScalingReplicaSet  42m   deployment-controller  Scaled up replica set nginx-deployment-6f9dbcc988 to 1
  Normal  ScalingReplicaSet  19m   deployment-controller  Scaled up replica set nginx-deployment-5c46dbdf89 to 1
  Normal  ScalingReplicaSet  19m   deployment-controller  Scaled down replica set nginx-deployment-6f9dbcc988 to 0 from 1
```

Now that we have deployed the new image we can verify that the CVE is gone. We will just want to refresh our search and select the `Last 5 mintutes` and hit update.
Once that is done your search window will look like this:

![CVE-2022-37434 fixed](/images/k8s360/logz-io-k8s360-nginx-pod-cve-fixed.png)
