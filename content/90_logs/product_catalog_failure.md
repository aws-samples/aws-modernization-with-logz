---
title: Generate GetProduct errors
chapter: true
weight: 94
---

# Generate Errors

As previously mentioned the OpenTelemetry demo has a set of feature flags to help illustrate the power of OpenTelemetry. In this section we will utilize the `productCatalogFailure` flag. This affects the Product Catalog service. The error consist on generating an error for the `GetProduct` request with the product id: `OLJCESPC7Z`.

Let's Enable the error by going to the Feature Flag Service. To do this we will utilize kubernetes `port-forward` feature.

Open your terminal and paste the following:

```shell
kubectl port-forward svc/astronomy-shop-frontendproxy 8080:8080 -n astronomy
```

Now open your web browser and point it to [http://localhost:8080/feature/featureflags](http://localhost:8080/feature/featureflags) you should have something that looks like the screenshot below.
![Otel Demo: featureflags](/images/logs/logz-io-logs-otel-demo-feature-flags.png)

Now we simply enable the `productCatalogFailure` by setting the feature to enabled.

1. Click Edit
1. Select enabled
1. Click Save button
   Once Complete it should look like the following screenshot.
   ![Otel Demo: productCatalogFailure](/images/logs/logz-io-logs-otel-demo-productCatalogFailure-true.png)

Now that we have enabled the feature flag for product catalog let's explore the logs and see what we can find out.
