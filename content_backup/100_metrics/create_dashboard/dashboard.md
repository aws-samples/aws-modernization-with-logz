---
title: Creating a Dashboard
weight: 105
---

# Interactive Dashboard

As we saw in the previous section we learned about PromQL. We will now utilize that newly-gained knowledge to create a dashboard that provides more context to the metrics we previously explored. Grafana, an open-source platform, empowers users to create dynamic and insightful dashboards that provide valuable insights into their data.

In this comprehensive tutorial, we will guide you through the process of creating interactive dashboards using Grafana and harnessing the power of PromQL (Prometheus Query Language) to extract and visualize data from Prometheus.

If you were doing this on your own infrastructure you would have to do the following steps to get started:

1. **Step 1**: Installing and Configuring Grafana:

   - Start by installing Grafana on your system.
   - Once installed, launch the Grafana server and access the Grafana web interface through your preferred browser.

1. **Step 2**: Connecting to Prometheus Data Source:

   - To leverage Prometheus data within Grafana, we need to add Prometheus as a data source.
   - Log in to the Grafana web interface.
   - Navigate to the "Configuration" (gear) icon on the left sidebar and select "Data Sources."
   - Click on the "Add data source" button.
   - Choose "Prometheus" as the data source type.
   - Configure the connection settings, such as the URL of your Prometheus server, and save the configuration.

1. **Step 3**: Ensure you are monitoring and providing proper maintenance of your grafana/prometheus infrastructure.
1. **Step 4**: Creating an Interactive Dashboard:

Fortunately for us since we are utilizing [Logz.io](https://logz.io) we can skip directly to step 4.

## Create an Interactive Dashboard

Now, let's embark on creating an engaging and interactive dashboard:

1. Click on the "Create" (plus) icon on the left sidebar and select "Dashboard."
1. On the new dashboard screen, click on the "Add panel" button to add visualizations to your dashboard.
1. Choose the visualization type you desire, such as a graph, single stat, or table.
1. Utilize PromQL queries to extract meaningful data from Prometheus. Here's an example of a PromQL query to fetch CPU usage percentage:

```
 sum(rate(node_cpu_seconds_total{mode="idle"}[5m])) \* 100

```

1. This query calculates the CPU usage percentage over a 5-minute time frame. 5. Configure the visualization settings, including the data source and PromQL query, to populate the visualization with relevant data.
1. Customize the appearance of the visualization, adjusting axes, colors, and legends to enhance clarity and understanding.
1. Continue adding panels and visualizations, repeating steps 3-6, to construct a comprehensive dashboard tailored to your specific monitoring needs.
   Arrange and resize the panels intuitively by dragging and resizing them to create an aesthetically pleasing layout.
   Save the dashboard by clicking on the "Save" icon on the top toolbar.
   Step 4: Advanced Dashboard Features:

#### Logz.io offers advanced features to further enhance your dashboards:

1. **Templating**: Employ templating feature to create dynamic variables that enable users to interactively change aspects of the dashboard, such as time ranges, server selections, or filtering options. This facilitates flexible and reusable dashboards suitable for different scenarios.
1. **Alerts**: The alerting feature is very rubust and feature reach that you can set up notifications based on specific conditions or thresholds. You can configure alerts to trigger when certain metrics cross predefined limits, ensuring timely responses to critical situations.
1. **Dashboard Sharing**: easily sharing of dashboards by generating shareable links or embedding them in external websites or portals. This promotes seamless collaboration and facilitates knowledge sharing among team members and stakeholders.
