---
title: "Track the issue in K8s360"
chapter: false
weight: 84
---


**We'll be using the K8s360 dashboard to track the Recommendation service issue**

Due to the nature of this feature flag, it will take several minutes until we can clearly see the impact.

Open the [K8s360 app](https://app-eu.logz.io/#/dashboard/observability/k8s360) in your Logz.io account.

Let's filter for the **astronomy** namespace using the filters on the left side:

![K8s360 Namespace](/images/play/k8s360-astronomy-ns.png)

If we expore these tabs one by one:

![K8s360 Tabs](/images/play/k8s360-tabs.png)

We'll notice that **astronomy-shop-recommendationservice** appears first in the **Memory** and **Restarts** tabs.

**Memory**
![K8s360 Memory](/images/play/k8s360-memory.png)

**Restarts**
![K8s360 Restarts](/images/play/k8s360-restarts.png) 

Click on the **astronomy-shop-recommendationservice** card and select the **Metrics** tab, you'll see spikes in memory usage

![K8s360 Deployment Memory](/images/play/k8s360-recommendation-deployment.png)

Go back to the **Pods** tab, click on your pod and open the **Memory** tab there, you'll see spikes in memory and container restarts

![K8s360 Deployment Memory](/images/play/k8s360-recommendation-pod.png)

We've found the memory leak issue in the Recommendation service, please review your application's code!

