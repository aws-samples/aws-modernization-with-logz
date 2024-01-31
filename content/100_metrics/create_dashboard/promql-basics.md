---
title: PromQL Basics
weight: 104
---

PromQL serves as the gateway to querying Prometheus time-series data, enabling users to dig deep into their system metrics. It offers a range of operators and functions, allowing for complex data manipulations and aggregations. Let's dive into a few PromQL code examples to understand its prowess:

## Example 1: Retrieving Metrics:

To retrieve a specific metric, such as CPU usage, we can use the following PromQL query:

```
container_cpu_usage_seconds_total{}
```

This query fetches the container_cpu_usage_seconds_total metric and displays the time-series data associated with it.

![Container CPU Usage seconds](/images/metrics/logz-io-metrics-container-cpu-ussage-seconds-total.png)

## Example 2: Filtering Metrics:

PromQL's filtering capabilities make it effortless to narrow down our focus. Consider the following query:

```
container_cpu_usage_seconds_total{namespace="monitoring"}
```

This query retrieves the container_cpu_usage_seconds_total metric but filters it to only include data from the monitoring namespace. This level of granularity helps us pinpoint specific resources or components within our system.
![Container CPU Usage seconds per namespace](/images/metrics/logz-io-metrics-container-cpu-ussage-seconds-total-per-namespace.png)

## Example 3: Aggregating Metrics:

PromQL excels at aggregating metrics across multiple time series. Let's take a look at an example:

```
sum(container_cpu_usage_seconds_total)
```

This query calculates the sum of the container_cpu_usage_seconds_total metric across all time series, providing a holistic view of the overall CPU usage.
![SUM Container CPU Usage seconds](/images/metrics/logz-io-metrics-container-cpu-ussage-seconds-tota-sum.png)

## Example 4: Range Queries:

PromQL allows us to fetch data within a specific time range. Here's an example:

```
cpu_usage_percentage[1h]
```

This query retrieves the cpu_usage_percentage metric for the past one hour, providing insights into its behavior over that timeframe.

## Exploring Availavble Metrics

While PromQL allows us to extract valuable data, Grafana takes it a step further by providing a visually appealing and interactive interface to analyze and monitor Prometheus metrics. Now that we have a basic understanding of PromQL we can use that new gain knowledge to create a set of new dashboards.
