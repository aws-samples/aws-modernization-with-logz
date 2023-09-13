---
title: Installation
chapter: true
---

Now that we have our Kubernetes cluster we can deploy the OpenTelemetry demo application.
To make our lives easier we will be utilizing the helm charts to deploy the application.

To deploy our application we will be utilizing a tool called `helmfile`. This tool makes it easier
not only to deploy our application but keep thing version.

#### Verify Access and Environment variables

Let's verify that we have everything we need to deploy our application;

```bash
$ echo $LOGZ_IO_API_TOKEN
00000-0000-00000-0000

$kubectl get nodes
NAME                                            STATUS   ROLES    AGE     VERSION
ip-192-168-112-197.us-east-2.compute.internal   Ready    <none>   2d11h   v1.25.7-eks-a59e1f0
ip-192-168-153-105.us-east-2.compute.internal   Ready    <none>   2d11h   v1.25.7-eks-a59e1f0
ip-192-168-165-255.us-east-2.compute.internal   Ready    <none>   2d11h   v1.25.7-eks-a59e1f0

```

We have our API toke that we will utilize to create deployment markers which we will talk about it in the next section.

### Let's deploy our application via `helmfile`:

First let's make sure we are in the correct directory:

```bash
$ cd 04-application
$ ls
deployment-end.json    deployment-start.json  helmfile.yaml          values.yaml

```

Before we get started we need to download a utility to create markers. You can head over to [highlighter](https://github.com/devx/highlighter)

```
$ wget https://github.com/devx/highlighter/releases/download/v0.1.0/highlighter-v0.1.0-$(uname -m) -O highlighter
```

Let's ensure we can execute the recently downloaded utility.

```shell
$ chmod +x ./highlighter

```

Finally verify our `highlighter` has downloaded.

```shell
$ ls -al

total 9384
drwxr-xr-x   7 victor  staff      224 May 17 06:50 ./
drwxr-xr-x  11 victor  staff      352 May 11 16:16 ../
-rw-r--r--   1 victor  staff      384 May 11 14:46 deployment-end.json
-rw-r--r--   1 victor  staff      348 May 11 14:36 deployment-start.json
-rw-r--r--   1 victor  staff      244 Apr 15 01:43 helmfile.yaml
-rwxr-xr-x   1 victor  staff  4767897 May 17 06:41 highlighter*
-rw-r--r--   1 victor  staff    18600 May 12 05:22 values.yaml
```

### Start Deployment

Now that we are in the right place with the correct environment we will do the following:

- Create a deployment marker to hight the start of our deployment
- Deploy the OpenTelemetry demo via helmfile
- Wait until the deployment finishes
- Create a deployment marker to signal the completion of our deployment.

Let's get started.

### Create deployment marker to signal start

We are just creating a deployment marker to signal the start of our deployment.

```
$ ./highlighter -p deployment-start.json
```

### Deploy Application via helmfile

```
$ helmfile apply

Adding repo open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts
"open-telemetry" has been added to your repositories

Comparing release=astronomy-shop, chart=open-telemetry/opentelemetry-demo
.
.

********************

```

### Wait until our deployment finishes.

We will wait for all the pods to finish deploy it should take about 5 minutes.

```bash
$ kubectl get pods -n astronomy --watch
NAME                                                    READY   STATUS    RESTARTS   AGE
astronomy-shop-accountingservice-868d9dc6df-5fbvc       1/1     Running   0          5m5s
astronomy-shop-adservice-55664cfbd5-wd5st               1/1     Running   0          5m5s
astronomy-shop-cartservice-54fd84dcc8-zgqwl             1/1     Running   0          5m5s
astronomy-shop-checkoutservice-84cb6d6767-qqv2g         1/1     Running   0          5m5s
astronomy-shop-currencyservice-994bfd99-qls4w           1/1     Running   0          5m4s
astronomy-shop-emailservice-7b6bb9d756-dnvhj            1/1     Running   0          5m4s
astronomy-shop-featureflagservice-6664ff778c-2gdfd      1/1     Running   0          5m5s
astronomy-shop-ffspostgres-d6c95499d-fgx8b              1/1     Running   0          5m5s
astronomy-shop-frauddetectionservice-79965c5cf7-jdv4p   1/1     Running   0          5m5s
astronomy-shop-frontend-69d677dfc4-v5tps                1/1     Running   0          5m5s
astronomy-shop-frontendproxy-6b847d44c-j859m            1/1     Running   0          5m5s
astronomy-shop-kafka-6557478d5d-ltqtv                   1/1     Running   0          5m5s
astronomy-shop-loadgenerator-69c5c8d76d-z925j           1/1     Running   0          5m5s
astronomy-shop-paymentservice-6495c89dbb-zkhhm          1/1     Running   0          5m5s
astronomy-shop-productcatalogservice-6644dd5f68-f4jts   1/1     Running   0          5m3s
astronomy-shop-prometheus-server-dd854459d-jsm5m        1/1     Running   0          5m5s
astronomy-shop-quoteservice-5554bdb9d6-jf7l9            1/1     Running   0          5m5s
astronomy-shop-recommendationservice-58cfb4c4f6-v6rtz   1/1     Running   0          5m4s
astronomy-shop-redis-86655bd5bc-7tr9m                   1/1     Running   0          5m3s
astronomy-shop-shippingservice-6c46575d69-vvvfq         1/1     Running   0          5m5s

```

### Verify everything is working

Wait a few minutes and lets make sure everything got deployed.

```bash
$ kubectl get all -n astronomy

NAME                                                        READY   STATUS             RESTARTS        AGE
pod/astronomy-shop-accountingservice-5bc5d9688f-j6sjt       1/1     Running            0               5m59s
pod/astronomy-shop-adservice-77f8cc9769-86hmn               1/1     Running            0               5m58s
pod/astronomy-shop-cartservice-5cc48bcfc6-vn7lf             1/1     Running            0               6m
pod/astronomy-shop-checkoutservice-75c9c4bdf7-rfdfd         1/1     Running            0               6m
pod/astronomy-shop-currencyservice-5f895f995f-pz8mn         1/1     Running            0               6m
pod/astronomy-shop-emailservice-5b8ffb5dfd-gv579            1/1     Running            0               6m
pod/astronomy-shop-featureflagservice-689566b697-d7glf      1/1     Running            0               6m
pod/astronomy-shop-ffspostgres-6d56868d5d-vh6n4             1/1     Running            0               5m59s
pod/astronomy-shop-frauddetectionservice-65f89b9c5c-prkjr   1/1     Running            0               5m59s
pod/astronomy-shop-frontend-7cf9cd8794-hnctf                1/1     Running            0               5m58s
pod/astronomy-shop-frontendproxy-86649846f9-vb4qt           1/1     Running            0               5m59s
pod/astronomy-shop-kafka-84d5569848-c2vdx                   1/1     Running            0               6m
pod/astronomy-shop-loadgenerator-77bc4b798d-b4ggp           1/1     Running            0               6m
pod/astronomy-shop-paymentservice-7cd7dbbcf6-mvtvm          1/1     Running            0               5m59s
pod/astronomy-shop-productcatalogservice-5b74b6bf4-skxzg    1/1     Running            0               6m
pod/astronomy-shop-prometheus-server-dd854459d-zp6jf        1/1     Running            0               6m
pod/astronomy-shop-quoteservice-79b44bd484-4j8v7            1/1     Running            0               6m
pod/astronomy-shop-recommendationservice-94f477c88-82qvn    1/1     Running            0               5m58s
pod/astronomy-shop-redis-5dc6c7857-99tgh                    1/1     Running            0               5m58s
pod/astronomy-shop-shippingservice-6dc8555c7f-cp9n8         1/1     Running            0               6m

NAME                                           TYPE        CLUSTER-IP       EXTERNAL-IP                                                                   PORT(S)              AGE
service/astronomy-shop-adservice               ClusterIP      10.100.151.19    <none>                                                                    8080/TCP             6m
service/astronomy-shop-cartservice             ClusterIP      10.100.83.197    <none>                                                                    8080/TCP             6m
service/astronomy-shop-checkoutservice         ClusterIP      10.100.193.207   <none>                                                                    8080/TCP
```
