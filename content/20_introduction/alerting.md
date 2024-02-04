---
title: Alerting
chapter: true
weight: 28
---

# Alerting

This defines **“how” to notify and “who” should be notified** when an actionable event occurs. This is the easiest to get wrong and it is so important to get right. Make sure you cover:

Alerting is the process of setting up notifications to be sent to the appropriate parties when a certain condition or threshold is met. Alerts can be triggered by a variety of factors, such as system metrics, application logs, or user behavior.

Alerting is a crucial component of observability because it helps teams quickly detect and respond to issues in their systems. By setting up alerts, teams can ensure that they are notified of important issues as soon as possible, which can help them to avoid outages and other disruptions.

**There are a few key things to keep in mind when setting up alerts:**

- Make sure your alerts are **specific** and **actionable**. The last thing you want is to be inundated with alerts that are either too vague or too general. Make sure your alerts are specific enough to identify the issue, but not so specific that they trigger too frequently.
- **Prioritize** your alerts. Not all alerts are created equal. Some alerts are more important than others, and you need to make sure that you prioritize your alerts accordingly. For example, you might want to prioritize alerts that are related to system availability or performance.
- **Test** your alerts. Before you put your alerts into production, make sure to test them thoroughly. This will help you to ensure that your alerts are working as expected and that they are sending notifications to the correct people.

Alerting is a powerful tool that can help teams to improve the observability of their systems. By setting up alerts, teams can ensure that they are quickly notified of important issues, which can help them to avoid outages and other disruptions.

**Here are some additional tips for setting up effective alerts:**

- Use a variety of **notification channels**. Don't rely on just one notification channel. Instead, use a variety of channels, such as email, Slack, and SMS, so that you can ensure that you will be notified of alerts, no matter where you are or what you are doing.
- Set up **escalation rules**. If an alert is not resolved quickly, you may want to set up escalation rules so that the alert is escalated to a higher level of support. This will help to ensure that the issue is addressed as quickly as possible.
- Use a **centralized alerting dashboard**. A centralized alerting dashboard can help you to view all of your alerts in one place. This can make it easier to track alerts and to identify any potential issues.
- Do all of your alerts **require attention**? The ones that don’t remove them as alerts.
- Is there **automation** to resolve alerts? If not, the alerts should become tickets for DevOps to automate away the problem.
- Are alerts being **tracked for trending**? They should be. This can easily justify devops automating a solution versus the hours spent resolving repeat alerts.
