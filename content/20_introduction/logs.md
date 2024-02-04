---
title: Logs
chapter: true
weight: 22
---

# Logs

**This is a tenet that is simple to implement, but difficult to do well.**

It not only defines where your servers and services place their execution and debugging information, it defines what you want to log, how you want it logged, and in most cases, how the logs can be transformed as they are shipped to an aggregation and/or searchable system.

Like monitoring, logging everything on a debug level is wasteful and going to create massive false positives, unimportant alarms, and increased difficulty in sifting through unimportant data. Not to mention, it will become expensive to manage.

**Try answering these questions:**

- **Where should all logs ship to?** Any log that contains important data should not stay on a server where it can be lost (and not analyzed).
- **How much logging is appropriate for each service?** Debug shouldn’t be the default unless you’re troubleshooting, or if important data is needed that only comes out when an application is set to debug. Those items should be reclassified.
- **How long should logs be retained locally and in your shipped location?**
- **What tools can simplify this process?**
- **Do logs need to be transformed to be more useful and ingestible?**
- **Are logs being populated with the correct data?**
In other words, custom applications should place meaningful information on the state of the application and detailed errors. This really puts a heavy onus on application developers to invest time in creating extensive error handling.
