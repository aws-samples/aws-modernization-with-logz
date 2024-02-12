---
title: "Recommendations Cache Issue"
chapter: false
weight: 83
---

### Break another component

Let's revert the **productCatalogFailure** flag and break the **Recommendation service**.

Once again navigate to the `/feature` page of your website to open the feature flags list.

Edit the **productCatalogFailure** feature and set the value to 0:

![Product Catalog revert](/images/play/product-catalog-fail-revert.png)

Go back to the list and edit the **recommendationCache** flag, set it to 1:

![Recommendation](/images/play/recommendation-cache-set.png)

Let's start our investigation now.