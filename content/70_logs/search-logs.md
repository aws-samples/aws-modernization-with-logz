---
title: Search Logs
chapter: true
weight: 75
---

# Searching Logs

In the previous section we enabled the product catalog failure service flag. Now we will utilize the logz.io log product powered by **OpenSearch** to look for errors.
If you had previously been looking through the product make sure you select the `Last 15 minutes`.
![Logs.io Logs: product catalog failure](/images/logs/logz-io-logs-last-15-minutes.png)
As you can see from the image above there have been many logs generated. Right way you may notice that we have 1 new exception. So let's click on that to explore
what is going on. Once you are on the **Exception** tab you will notice that there is an internal error.
![Logz.io: Exceptions 1](/images/logs/logz-io-logs-exceptions-1.png)
Expand the exception and take a minute to explore the contents of the exception:
![Logz.io: Exceptions 2](/images/logs/logz-io-logs-exceptions-2.png)
If you go all the way down to the last lines you might notice the error is referring to the **ProductCatalogService**.
![Logz.io: Exceptions 3](/images/logs/logz-io-logs-exceptions-3.png)
As you can see we didn't have to do much to figure out what was going on. We can clearly see from the message that the failrues are due to the feature flag being enabled.
In the next section we will cover how to create an alert for when this happens again.
