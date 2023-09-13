---
title: PromQL Basics
weight: 84
---

PromQL serves as the gateway to querying Prometheus time-series data, enabling users to dig deep into their system metrics. It offers a range of operators and functions, allowing for complex data manipulations and aggregations. Let's dive into a few PromQL code examples to understand its prowess:

## Example 1: Retrieving Metrics:

To retrieve a specific metric, such as CPU usage, we can use the following PromQL query:

```
cpu_usage_percentage
```

This query fetches the cpu_usage_percentage metric and displays the time-series data associated with it.

![CPU Usage Percentage]("images/logz-io/logz-io-metrics-cpu-usage-percentage.png")

## Example 2: Filtering Metrics:

PromQL's filtering capabilities make it effortless to narrow down our focus. Consider the following query:

```
cpu_usage_percentage{instance="server01"}
```

This query retrieves the cpu_usage_percentage metric but filters it to only include data from the server01 instance. This level of granularity helps us pinpoint specific resources or components within our system.

![CPU Usage Percentage - instance](/images/logz-io/logz-io-metrics-cpu-usage-percentage-instance.png)

## Example 3: Aggregating Metrics:

PromQL excels at aggregating metrics across multiple time series. Let's take a look at an example:

```
sum(cpu_usage_percentage)
```

This query calculates the sum of the cpu_usage_percentage metric across all time series, providing a holistic view of the overall CPU usage.

![CPU Usage Percentage](/images/logz-io/logz-io-metrics-cpu-usage-percentage-sum.png)

## Example 4: Range Queries:

PromQL allows us to fetch data within a specific time range. Here's an example:

```
cpu_usage_percentage[1h]
```

This query retrieves the cpu_usage_percentage metric for the past one hour, providing insights into its behavior over that timeframe.

![CPU Usage Percentage](/images/logz-io/logz-io-metrics-cpu-usage-percentage-1h.png)

## Exploring Availavble Metrics

While PromQL allows us to extract valuable data, Grafana takes it a step further by providing a visually appealing and interactive interface to analyze and monitor Prometheus metrics. Now that we have a basic understanding of PromQL we can use that new gain knowledge to create a set of new dashboards.
