---
title: "Track the issue in App360"
chapter: false
weight: 82
---


**Let's explore App360 to find the failing component of our demo application.**

Open your [Logz.io tab](https://app.logz.io/) and navigate to App360.

Your services list should look like on the screenshot below. There is a raise in **Errors** ratio for some of the services.

![Services](/images/app360/app360-high-errors-list.png)

Switch to the **Map** view

![Map](/images/app360/app360-high-errors-map.png)

The same 3 services are marked red as the ones having the highest errors rate.

Let's explore whas is happening in the **productcatalogservice**. Click on it and select **productcatalogservice Drill-down**

![Product Catalog](/images/app360/app360-productcatalogservice.png)

We can clearly see that **oteldemo.ProductCatalogService/GetProduct** operation is the source of errors

![GetProduct](/images/app360/app360-getproduct.png)

Click on it and select one of the traces wit status code **13**

![GetProduct](/images/app360/app360-getproduct-details.png)

This will bring us to the trace details where you can expand the span with an exclamation mark and then expand the **Tags**

We've found the problematic product!

![GetProduct](/images/app360/app360-getproduct-jaeger.png)