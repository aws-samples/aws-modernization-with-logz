---
title: Correlation
chapter: true
weight: 25
---

# Correlation

Correlation is the practice of linking together different pieces of data so that you can understand how they are related. This is a critical aspect of observability, as it allows us to create a complete picture of system behavior by connecting data from different sources, such as metrics, logs, and traces.

There are two main types of correlation: **temporal** and **spatiotemporal**:
- **Temporal correlation** refers to the relationship between events that occur over time, such as the correlation between CPU usage and memory usage over a given time period.
- **Spatiotemporal correlation** refers to the relationship between events that occur in both time and space, such as the correlation between user activity on a website and the performance of the underlying infrastructure.

**Implementing correlation** typically involves collecting data from multiple sources and using tools and techniques to link that data together. For example, you might use a tool like Elasticsearch to collect and store logs and metrics, and then use a tool like Grafana to visualize that data and identify correlations between different metrics.

**Correlation is distinct from anomaly detection**, which is the practice of identifying events or patterns that deviate from the norm. While anomaly detection can help identify issues in a system, correlation is necessary to understand the underlying causes of those issues.

**In the tenets of observability, correlation fits in as a key practice for creating a complete picture of system behavior.** By linking together data from different sources, we can gain a deeper understanding of how our systems are behaving and quickly identify and resolve issues as they arise. Correlation is closely related to metrics, logs, and traces, as it allows us to connect data from those sources and gain a more comprehensive view of system behavior.

**Here are some examples of how correlation can be used to improve observability:**

- **Identifying the root cause of performance issues.** By correlating metrics such as CPU usage, memory usage, and database queries, you can quickly identify the resource that is causing a performance issue.
- **Troubleshooting application errors.** By correlating logs and traces, you can see the sequence of events that led to an application error. This information can help you identify the root cause of the error and fix it.
- **Monitoring infrastructure health.** By correlating metrics from different parts of your infrastructure, you can get a holistic view of the health of your system. This information can help you identify potential problems before they cause outages.

Correlation is a powerful tool that can be used to improve observability. By linking together data from different sources, you can gain a deeper understanding of how your systems are behaving and quickly identify and resolve issues as they arise.
