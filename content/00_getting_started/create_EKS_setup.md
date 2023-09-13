---
title: "Create an EKS Cluster"
weight: 19
---

{{% notice warning %}}
Provisioning this workshop environment in your AWS account will create resources and **there will be cost associated with them**.
Refer to the [**Clean up section**](/300_cleanup.html) to learn how to remove the infrastructure provisioned in this workshop.

{{%  /notice  %}}

Since we clone the repository in the installation of additional tools. We can change into the setup directory to begin the lab, and create the cluster which can take a bit of time.

```bash
$ cd ~/logz-io-observability-workshop-code/01-setup
$ eksctl create cluster -f logz-observability-workshop.yaml
```

## Verify cluster is working

Once the cluster finishes creating you should have an eks cluster with a minimun of 3 nodes.

Let's get the nodes

```bash
$ kubectl get nodes

NAME                                            STATUS   ROLES    AGE   VERSION
ip-192-168-118-73.us-east-2.compute.internal    Ready    <none>   47m   v1.25.7-eks-a59e1f0
ip-192-168-158-183.us-east-2.compute.internal   Ready    <none>   47m   v1.25.7-eks-a59e1f0
ip-192-168-186-151.us-east-2.compute.internal   Ready    <none>   47m   v1.25.7-eks-a59e1f0

```

Finally let's get all available resources.

```bash
$ kubectl get all --all-namespaces

NAMESPACE     NAME                          READY   STATUS    RESTARTS   AGE
kube-system   pod/aws-node-8krm8            1/1     Running   0          63m
kube-system   pod/aws-node-pl4sh            1/1     Running   0          63m
kube-system   pod/aws-node-xn4xk            1/1     Running   0          63m
kube-system   pod/coredns-8fd4db68f-pwq8f   1/1     Running   0          71m
kube-system   pod/coredns-8fd4db68f-q8gpw   1/1     Running   0          71m
kube-system   pod/kube-proxy-4hbr5          1/1     Running   0          63m
kube-system   pod/kube-proxy-dvbzt          1/1     Running   0          63m
kube-system   pod/kube-proxy-srblm          1/1     Running   0          63m

NAMESPACE     NAME                 TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)         AGE
default       service/kubernetes   ClusterIP   10.100.0.1    <none>        443/TCP         71m
kube-system   service/kube-dns     ClusterIP   10.100.0.10   <none>        53/UDP,53/TCP   71m

NAMESPACE     NAME                        DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   daemonset.apps/aws-node     3         3         3       3            3           <none>          71m
kube-system   daemonset.apps/kube-proxy   3         3         3       3            3           <none>          71m

NAMESPACE     NAME                      READY   UP-TO-DATE   AVAILABLE   AGE
kube-system   deployment.apps/coredns   2/2     2            2           71m

NAMESPACE     NAME                                DESIRED   CURRENT   READY   AGE
kube-system   replicaset.apps/coredns-8fd4db68f   2         2         2       71m

```
