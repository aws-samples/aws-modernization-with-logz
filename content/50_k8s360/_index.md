---
title: "Logz.io Kubernetes 360"
chapter: true
weight: 50
---

# Verifying Everything is working

For this section we will utilize logz.io Kubernetes 360 to ensure everything is working.

Kubernetes 360 is part of Logz.io’s Open 360, a unified platform combining a true log analytics solution, the best Prometheus metrics monitoring, and the value of distributed tracing powered by Jaeger.

Kubernetes 360 lets developers, R&D and engineering teams monitor and troubleshoot applications deployed in Kubernetes environments.

The platform utilizes Kubernetes’ numerous advantages for R&D and dev teams, allowing you to monitor application SLOs in a simple, efficient, and actionable manner. Kubernetes 360 offers flexibility and visibility while providing service discovery, balancing load, and allowing developer autonomy and business agility.

![Main dashboard](/images/k8s360/logz-io-k8s360-start.png)

## Kubernetes 360 overview

#### Customize your application

You can change and adjust Kubernetes 360 application to match your monitoring and troubleshooting needs. To help you get started, we’ll break down the different options, how you can access them, and how they can help you and your team.

![Dashboard breakdown](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/overview-k360.png)

##### Clusters

Choose which cluster you want to review. The dropdown menu includes all clusters in your Kubernetes account, bundled under their respective accounts.

##### Namespace

Environments with many users, teams, or projects use a namespace to bundle relevant clusters and nodes. This filter allows you to focus on all elements inside a specific namespace.

##### Auto refresh

Your Kubernetes 360 application is set to **auto refresh every 60 seconds** to provide you with the most recent data. Hover over the refresh button to see when the data was last updated.

Click on the button to stop the auto refresh. This allows you to investigate an issue or focus on your Kubernetes environment’s current state. Click on the button again to turn auto refresh on.

![autorefresh button](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/autorefresh.png)

##### View

You can switch your view to filter by the following resources: **Nodes**, **Deployments**, **Daemonset**, **Statefulset**, or **Job**.

![switch view](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/k360-switch-view.png)

When switching between views, the main cards change to represent the different resources. Each card includes several essential measurements, such as average CPU and memory usage, and a rundown of the resource’s status. The cards help you quickly identify which resources require your attention by marking failings or issues in red.

![deployments card](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/k360-breakdown.png)

##### Change your metrics view

By default, Kubernetes 360 provides an overview of your current environment. Use the bottom menu to focus on different metrics according to your monitoring needs:

- **Status** - Understand which pods are running, failing, pending, or which pods succeeded.
- **CPU** - View CPU consumtions by percentage: 0-50%, 50%-80%, 80%-100%, or over 100%.
- **Memory** - Know how much memory each pod uses: 0-50%, 50%-80%, 80%-100%, or over 100%.
- **Restarts** - Get a numeric overview of how many restarts occurred in each pod: 0, 1-10, 11-20, or over 20 restarts.
- **Log Error Rate** - Analyze the percentage of log errors that occurred and how many pods were affected. [_How do we calculate the log error rate?_](https://docs.logz.io/user-guide/k360/overview.html#calculating-log-error-rate)
- **Security risks** - Presents how many potential security risks are in each of your pods.

#### Quick view

Click on a deployment, node, or pod to open the quick view menu and get more information about each element. The menu allows you to investigate and understand what’s happening inside your Kubernetes environment by adding more helpful information.

###### Deployment quick view

A **deployment** quick view includes the following fields:

- **Name** - The name of the deployment you’re focusing on.
- **Cluster** - The cluster that this deployment is a part of.
- **Region**\- Your deployment’s region.
- **Namespace** - The deployment’s unique namespace.
- **CPU** - Amount of CPU used by this deployment. If the CPU is not capped, you’ll see an indicator stating there’s **no limit**.
- **Memory** - An average calculation of how much memory this deployment uses.
- **Status** - An indicator of the deployment’s status. It can be **True**, **False**, or **Unknown**.
- **Uptime** - The duration of how long this deployment has been running.
- **Security risks** - How many potential security risks are in this deployment.

At the bottom of the quick view menu you can view the pods related to this deployment, see their status, the number of containers they’re in, and how much CPU and memory they’re using.

![Quick menu Overview](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/k360-quick-view.png)

###### Node quick view

A node quick view menu includes the following fields:

- **Name** - The name of the node you’re focusing on.
- **Role** - Master or worker.
- **Status** - Indicates whether that condition is applicable, with possible values **True**, **False**, or **Unknown**.
- **Cluster** - The cluster to which this node belongs.
- **Region** - The node’s region.
- **Uptime** - The number of hours this node has been running.
- **CPU** - A percentile average of how much CPU has been used.
- **Memory** - An average percentage of how much memory was consumed.
- **Disk** - The amount of disk space this node takes, and how much is left.
- **Security risks** - Number of potential security risks in this node.

At the top of the quick view menu, there are links that can take you directly to the relevant logs (See Logs), open Logz.io’s Livetail for quick troubleshooting, or see the relevant metrics (See Metrics).

You can also view the relevant logs by clicking on the **Logs** tab, which presents the time, log level, and warning for each log inside the node. Click on the **Security** tab to see how many risks are inside the node, where they’re located and what’s their severity level.

At the bottom of the quick view menu’s **Overview** tab you’ll find a list of all pods related to this node. The list indicates each pod’s status, the number of containers they’re in, and how much CPU and memory they use.

![Node menu Overview](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/k360-node-quick-view.png)

Click on a pod to access its quick view menu and gain access to this additional information:

- **Name** - The name of the pod you’re focusing on.
- **Status** - Indicates whether that condition is applicable, with possible values **True**, **False**, or **Unknown**.
- **Node** - The node that this pod is a part of.
- **Workload name** - The name of the pod.
- **Workload type** - The configuration of this pod.
- **Cluster** - The cluster in which this pod resided.
- **Containers number** - Number of containers inside the pod.
- **Region** - This pod’s region.
- **Namespace** - The pod’s unique namespace.
- **Uptime** - The duration of how long this pod has been up and running.
- **Restarts** - The number of restarts in this pod.
- **CPU** - A percentile average of how much CPU has been used.
- **Memory** - An average per
