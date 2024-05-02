---
title: "Create an EKS Cluster"
weight: 19
---

{{% notice warning %}}
Provisioning this workshop environment in your AWS account will create resources and **there will be cost associated with them**.
Refer to the [**Clean up section**](/300_cleanup.html) to learn how to remove the infrastructure provisioned in this workshop.

{{%  /notice  %}}

## Setting up EKS Cluster yaml file

Create a new file on your computer called workshop.yaml an open it

```bash
$ touch workshop.yaml
$ nano workshop.yaml
```

Once you open the file, copy the following contents into the text editor:
```
apiVersion: eksctl.io/v1alpha5
kind: ClusterConfig

metadata:
  name: logz-io-o11y-workshop
  region: us-east-1
  version: "1.27"

managedNodeGroups:
  - name: workers
    labels: { role: workers }
    instanceType: t3a.medium
    desiredCapacity: 4
    volumeSize: 80
    privateNetworking: true
    tags:
      Environment: workshop
      Owner: workshop-attendee
```
Close the text editor with **Ctrl + X**, confirm with **Y** and **Enter**.

Finally, execute the following command to create the cluster:

```bash
$ eksctl create cluster -f workshop.yaml
```

It will take approximately **15 minutes** until the cluster is created.

## Verify cluster is working

Once the cluster finishes creating you should have an EKS cluster with 4 nodes.

Let's get the nodes, execute this command

```
$ kubectl get nodes

```

You should see something like this

```
NAME                                               STATUS   ROLES    AGE     VERSION
ip-192-168-117-13.us-east-1.compute.internal    Ready    <none>   7m44s   v1.27.9-eks-5e0fdde
ip-192-168-147-30.us-east-1.compute.internal    Ready    <none>   7m44s   v1.27.9-eks-5e0fdde
ip-192-168-164-248.us-east-1.compute.internal   Ready    <none>   7m41s   v1.27.9-eks-5e0fdde
ip-192-168-165-72.us-east-1.compute.internal    Ready    <none>   7m42s   v1.27.9-eks-5e0fdde

```

Finally, let's get all available resources by running

```bash
$ kubectl get all -A
```

If something like this comes up, it means everything is working as expected

```
NAMESPACE     NAME                          READY   STATUS    RESTARTS   AGE
kube-system   pod/aws-node-8krm8            1/1     Running   0          63m
kube-system   pod/aws-node-pl4sh            1/1     Running   0          63m
kube-system   pod/aws-node-wvl6k            1/1     Running   0          63m
kube-system   pod/aws-node-xn4xk            1/1     Running   0          63m
kube-system   pod/coredns-8fd4db68f-pwq8f   1/1     Running   0          71m
kube-system   pod/coredns-8fd4db68f-q8gpw   1/1     Running   0          71m
kube-system   pod/kube-proxy-4hbr5          1/1     Running   0          63m
kube-system   pod/kube-proxy-dvbzt          1/1     Running   0          63m
kube-system   pod/kube-proxy-srblm          1/1     Running   0          63m
kube-system   pod/kube-proxy-5dfj9          1/1     Running   0          63m

NAMESPACE     NAME                 TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)         AGE
default       service/kubernetes   ClusterIP   10.100.0.1    <none>        443/TCP         71m
kube-system   service/kube-dns     ClusterIP   10.100.0.10   <none>        53/UDP,53/TCP   71m

NAMESPACE     NAME                        DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
kube-system   daemonset.apps/aws-node     4         4         4       4            4           <none>          71m
kube-system   daemonset.apps/kube-proxy   4         4         4       4            4           <none>          71m

NAMESPACE     NAME                      READY   UP-TO-DATE   AVAILABLE   AGE
kube-system   deployment.apps/coredns   2/2     2            2           71m

NAMESPACE     NAME                                DESIRED   CURRENT   READY   AGE
kube-system   replicaset.apps/coredns-8fd4db68f   2         2         2       71m

```
