---
title: "Logz.io Kubernetes360"
chapter: true
weight: 60
---

# Intro into K8s360

Kubernetes 360 is part of Logz.io’s Open 360, a unified platform combining a true log analytics solution, the best Prometheus metrics monitoring, and the value of distributed tracing powered by Jaeger.

Kubernetes 360 lets developers, R&D and SRE teams monitor and troubleshoot applications deployed in Kubernetes environments.

The platform utilizes Kubernetes’ numerous advantages, allowing you to monitor application SLOs in a simple, efficient, and actionable manner. Kubernetes 360 offers flexibility and visibility while providing service discovery, balancing load, and allowing developer autonomy and business agility.

![Main dashboard](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/k360-jul-overview-.png)

## Kubernetes 360 overview

You can dive deeper into each card by clicking on it and opening the Quick view menu.

### Customize your application

You can change and adjust Kubernetes 360 application to match your monitoring and troubleshooting needs. To help you get started, we’ll break down the different options, how you can access them, and how they can help you and your team.

![Dashboard breakdown](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/k360-jul-overview-numbers-.png)

#### Filters

First, choose the environment you'd like to view. Environments with many users, teams, or projects use a namespace to bundle relevant clusters and nodes. This filter allows you to focus on all elements inside a specific namespace.

Next, choose whether to view the environment's clusters, nodes, or both. Each dropdown menu includes all clusters and nodes in the chosen Kubernetes account, and you can use the search bar to find and add nodes to your view easily.

#### View

You can switch your view to filter by the following resources: **Node**, **Pod**, **Deployment**, **Daemonset**, **Statefulset**, or **Job**.
![View selector](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/filter-view-jul-.png)

In addition, you can also switch between the **Map** and **List** views, according to your monitoring needs. Note that the Pod view can only be seen as a list.

When switching between views, the main cards change to represent the different resources. Each card includes several essential measurements, such as average CPU and memory usage, and a rundown of the resource’s status. The cards help you quickly identify which resources require your attention by marking failings or issues in red.

![Card view](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/node-view-jul-.png)

You can dive deeper into each card by clicking on it and opening the Quick view menu.

#### Search

You can search your environment for specific elements you’d like to view. Note that the search focuses on the elements' names, not their status, cluster, namespace, etc.

#### Auto refresh

You can set your Kubernetes 360 application to auto refresh every 60 seconds, to ensure you view the most recent data. To do so, hover over the refresh button and click the auto refresh toggle. You can also click on the button to manually refresh the data.

![Autorefresh button](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/toggle-auto-refresh.png)

#### Change your metrics view

By default, Kubernetes 360 provides an overview of your current environment. Use the bottom menu to focus on different metrics according to your monitoring needs:

- **Status** - Understand which pods are running, failing, pending, or which pods succeeded.
- **CPU** - View CPU consumtions by percentage: 0-50%, 50%-80%, 80%-100%, or over 100%.
- **Memory** - Know how much memory each pod uses: 0-50%, 50%-80%, 80%-100%, or over 100%.
- **Restarts** - Get a numeric overview of how many restarts occurred in each pod: 0, 1-10, 11-20, or over 20 restarts.
- **Log Error Rate** - Analyze the percentage of log errors that occurred and how many pods were affected.
- **Security risks** - Presents how many potential security risks are in each of your pods.

### Quick view

Clicking on one of the cards or rows opens the quick view menu. This menu provides additional information about each element, allowing you to investigate and understand what’s happening inside your Kubernetes environment.

For each available view - Deployment, Pod, Node, Dameonset, Statefulset, and Job - you can access the quick view to gain more information, such as:

- **Cluster** - The cluster associated with the chosen view.
- **Namespace** - The unique namespace.
- **Status** - Indicates whether that condition is applicable, with possible values True, False, or Unknown.
- **CPU** - Amount of CPU used. If the CPU is not capped, you'll see an indicator stating no limit.
- **Memory** - An average calculation of how much memory is in use.
- **Uptime** - The duration of how long the chosen view has been running.
- **Security risks** - The number of potential security risks.
And more.

![Quick menu Overview](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/pod-upper-overview-sep.png)

Each view lets you dive deeper into the data by using the links at the top of the quick view. Click on **See Metrics**, **See Traces**, or **See Logs** to navigate directly to the relevant view.

#### Quick view tabs

Each quick view includes several tabs that provide additional information you can act on. For each tab, you can change the time frame chosen by clicking on the date bar at the top.

#### Pods tab

The Pods tab provides a list of all pods related to this node. The table includes each pod's status, the number of containers they’re in, and how much CPU and memory they use. Clicking on one of the pods will lead you to that pod's quick view menu.

![Node Quick view](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/node-quick-view-sep.png)

#### Logs tab

In the Logs tab you can view the time, log level, and message for each log line. You can search for specific logs using the search bar, which supports free text and Lucene queries.

![Pod Quick view](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/pod-quick-view-sep.png)

#### Metrics tab

The **Metrics** tab presents useful data in graph form. These graphs provides a view of Replicas Over Time, CPU Usage (cores) per pod, Memory Usage Per Pod, CPU Usage, Requests and Limits (Cores), Memory Usage, Requests and Limits, and Received & Transmitted Bytes.

![Pod Quick view](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/metrics-quick-view.png)

#### Traces tab

The **Traces** tab includes all of the spans in this deployment, including the following:

- Time
- Trace ID
- The Service related to the span
- Which Operation ran
- The Duration of the run, represented in milliseconds
- Status code indicating whether a specific HTTP request has been successfully completed

![Deployment Quick view](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/deployment-quick-view-sep.png)

#### Investigate through quick view

##### See Metrics
You can easily investigate the different issues you might encounter.

Each quick view menu contains the **View Metrics** button, allowing you to view the relevant information in a Grafana application. This can provide a focused overview of the chosen element, allowing you to pinpoint what happened and when it started quickly.

##### See Logs
Node and pod views include the **See Logs** button, which opens an OpenSearch Dashboards screen with the relevant query to display the log information.

If you’ve manually set up your Kubernetes account, you might get an empty query with no results. In this case, you can view all related logs using a custom filter.

Click on **Add filter** at the top of the screen. The fields vary according to your chosen view; add `kubernetes.host` to the field to view Node related logs. To view Pod related logs, add `kubernetes.pod_name` to the field.

Next, choose the operator. For example, you can select exists to view all related logs.

##### Open Livetail
Node and pod views include the **Open Livetail** button, which opens Logz.io's Livetail filtered with the selected Kubernetes host. Live tail gives you a live view of your logs as they come into Logz.io, allowing you to view and troubleshoot in real time.

##### Open Traces
The Deployment view includes the **See Traces** button, which opens Jaeger with the relevant data needed to deep dive into it. Gain a system-wide view of your distributed architecture, detect failed or high latency requests, and quickly drill into end-to-end call sequences of selected requests of intercommunicating microservices.

## Track Deployment Data

You can enrich your Kubernetes 360 graphs by adding an indication of recent deployments, helping you determine if a deployment has increased response times for end-users, altered your application's memory/CPU footprint, or introduced any other performance-related changes.

To enable deployment tracking ability, run the [Telemetry Collector](https://app.logz.io/#/dashboard/integrations/collectors?tags=Quick%20Setup) on your Kubernetes clusters. You can also activate this process **manually** by installing Logz.io [Kubernetes events Helm chart](https://app.logz.io/#/dashboard/integrations/Kubernetes:~:text=user%20guide.-,Send%20your%20deploy%20events%20logs,-This%20integration%20sends).

Once enabled, the graphs will include a deployment marker, marked by a dotted vertical line.

You can view additional deployment data by clicking on the line. This data includes the deployment time, the associated service and environment, and a quick link to view the commit in your logs.

Click **Go to commit** to access and view your own code related to this deployment, allowing you to probe deeper into the relevant data.

{{% notice info %}}
To activate the **Go to Commit** button, go to **your app or service** and add the following annotation to the metadata of each resource's versioning you want to track: `logzio/commit_url: ""`, and the URL structure should be: "`https://github.com/<account>/<repository>/commit/<commit-hash>`". [Learn more](https://github.com/logzio/logzio-helm/tree/master/charts/logzio-k8s-events#deployment-events-versioning).

{{%  /notice  %}}

![K8s360 deploy](https://dytvr9ot2sszz.cloudfront.net/logz-docs/k360/k360-deploy.png)