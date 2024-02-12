---
title: "Product Catalog Failure"
chapter: false
weight: 81
---

### Break one of the website components

In the end of the [application installation](/50_application/application-install.html) we opened a tab with our application frontend. Go back to that tab, duplicate it and in the new tab add `/feature` to the page address to open the feature flags list.

This page lists different feature flags that can trigger failures in the application

![Feature Flags](/images/play/feature-flags.png)

Locate **productCatalogFailure** flag. This flag triggers the failure of the **GetProduct** request with a specific product.

To enable this flag simply click **Edit** next to the flag and set **Enabled** value to **1**, hit **SAVE**.

![Product Catalog](/images/play/product-catalog-fail.png)

### Check how this affected our website

Navigate to the tab where you have the application frontend and try opening this product

![Explorascope](/images/play/explorascope.png)

The page won't show any details.