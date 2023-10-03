---
title: Logz.io OpenTelemetry Collector
chapter: true
weight: 40
---

# Install Telemetry Collector in our EKS cluster

To get started sending your logs, metrics, and/or traces to Logz.io, you can begin a free trial through our website. If you have been following along then after you created your account you were left with a screen that looks like the screen shot below. Let's send data by clicking on the "Get Started" button.

If you already have a Logz.io account, go to the ‘Send your data’ page in one of the left product toolbars and hit the ‘Start Collecting’ button at the top of the page (see the second images below).

![Send Your data](/images/telemetry/tc-waiting-for-data-01.png)

Now it’s time to configure the Telemetry Collector. All we have to do is follow the steps on the screen—starting with selecting what we want to monitor. Currently, Telemetry Collector can integrate with:

- Your local host: this integration is used most often to test Logz.io. Quickly and easily get data from your local host into Logz.io to explore our analysis capabilities.
- Kubernetes (AKS, EKS, or GKE): See all of your critical Kubernetes health and performance metrics together, alongside logs and traces to explore the root cause of challenges. Telemetry Collector also automatically discovers the application running on Kubernetes and parses the application logs.
- AWS EC2: Quickly deploy the Telemetry Collector to begin monitoring your EC2s.
- AWS CloudWatch: Already collecting logs and metrics with CloudWatch? Deploy the Telemetry Collector to easily forward them to Logz.io.

We will continuously release more integrations with popular cloud technologies in the near future.

For our workshop we will be selecting kubernetes > EKS.

![k8s-eks](/images/collector/logz-io-collector-1-eks.png)

You will be brought to screen that has been populated with a helm configuration to deploy the collection of logs, metrics and traces.

Before we continue we need to update the place holders in yellowed `ENTER VALUE` with a value of your choosing. It production environments

you want to utilize the name of the cluster or environment name.
![k8s helm configuration](/images/collector/logz-io-collector-2-install-via-helm.png)

Click the `Copy snippet` button to copy the helm configuration to your clipboard. You will need this in the next step.

![helm install](/images/collector/logz-io-console-install-via-helm.png)
Paste the helm snippet into the terminal window and run the command. This will install the telemetry collector into your EKS cluster. Once the installation is complete you will see a message that looks like the one below.

After about a minute, we can see our data arrive in our Logz.io account for analysis.

![data received](/images/collector/logz-io-collector-data-received.png)

And that’s how you begin sending data to Logz.io in minutes. Let's explore Kuberentes via our Open 360 Platform.
