---
title: "Components Failure"
chapter: false
weight: 81
---

### Break one of the website components

In the end of the [application installation](/50_application/application-install.html) we opened a tab with our application frontend. Go back to that tab, duplicate it and in the new tab add `/feature` to the page address to open the feature flags list.

This page lists different feature flags that can trigger failures in the application

![Feature Flags](/images/play/otel-demo-feature-flags.png)

Let's trigger memory issues in the Recommendations service.

Locate the **recommendationCache** flag.

To enable this flag simply click **Edit** next to the flag and check the **Enabled** box, hit **SAVE** and then **BACK**.

![Recommendation](/images/play/otel-demo-recommendation-enable.png)

### Break another component

Now locate **productCatalogFailure** flag. This flag triggers the failure of the **GetProduct** request for a specific product.

Once again, click **Edit** next to this flag and check the **Enabled** box, hit **SAVE**.

![Product Catalog](/images/play/otel-demo-product-catalog-enable.png)
