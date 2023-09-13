---
title: Create Log Alert
chapter: true
weight: 79
---

# Creating An Alert

In the last section we ended identifying the exception being generated due to a feature flag being enabled.

Feature flags, also known as feature toggles or feature switches, are a powerful technique used in software development to enable or disable specific features or functionality within an application. They act as conditional statements that control the availability of a feature, allowing developers to turn features on or off remotely without the need for redeploying or releasing new versions of the software. The importance of feature flags lies in their ability to provide flexibility, agility, and risk mitigation in the development process. They allow developers to decouple feature development from feature deployment, enabling continuous delivery and allowing teams to release features gradually, test them in production, and gather feedback before making them available to all users. Feature flags also help mitigate risks by allowing teams to rollback or disable features quickly in case of issues or unexpected behavior. Furthermore, they facilitate A/B testing, allowing developers to experiment with different variations of a feature and make data-driven decisions based on user feedback and behavior. Overall, feature flags empower development teams to deliver software faster, with reduced risk, and the ability to iterate and adapt to user needs in real-time.

### Configuring an alert

Let's pick back up where we left of in the previous section. Where we determine that `"ProductCatalogService Fail Feature Flag Enabled"`

#### Name the alert

Give your alert a meaningful name. When your alert triggers, its name is used as the email subject or notification heading.

Your alert name can contain letters, numbers, spaces, and special characters. It **can’t** contain emojis or any other elements.

#### Search components

Next, set the search components. This determines which logs to look for and in which accounts.

If you intend to create a correlated alert with 2 queries, see [this guide](https://docs.logz.io/user-guide/alerts/correlated-alert/).

![Alert group by settings](https://dytvr9ot2sszz.cloudfront.net/logz-docs/alerts/alert-filter-component.gif)

To perform date range filtering on the `@timestamp` field, include the field as part of a query, rather than by adding it as a filter: `@timestamp` filters are overwritten.

##### Query and filters

You can use any combination of filters and a search query. Note the following:

- Use a Lucene search query.
  - You have the option to use wildcards.
  - OpenSearch Dashboards Query Language (DQL) is not supported.
- All filters are accepted, including: **is, is not, is one of, is not one of, exists, does not exist**.

Once you’re done refining your search query and filters, you can click **Preview** to open OpenSearch Dashboards in another tab. It can help review the returned logs and ensure you get the expected results.

##### Group-by (order matters!)

You can apply **group by** operators to up to 3 fields. If you use this option, the alert will return the aggregated results.

The order in which you add group-by fields matters. Results are grouped in the order in which the group-by fields are added. (The fields are shown from first to last from Left-To-Right.)

For example, the following will group results by continent, then country, then city:

![Ordered group by field functions](https://dytvr9ot2sszz.cloudfront.net/logz-docs/correlated-alerts/ordered-group-by_aug2021.png)

If we reverse the order (city, then country, then continent), it will likely generate unintended results.

You can use the group-by to create a visualization of your triggered alerts. The visualization will show the logs caught by the alert, letting you see which group-by values existed when the alert was triggered and which group-by values matched the condition.

For example, if you set an alert to:

- Look at the last 15 minutes
- Trigger if there are more than 3 logs
- Group the results by account_name

You’ll be able to use these fields to create the following chart:

![Alerts to visualization](https://dytvr9ot2sszz.cloudfront.net/logz-docs/correlated-alerts/group-by-visualize.png)

###### Accounts to search

Next, select the **Accounts to search**.

- If you select **All accounts**, the alert will query the logs in all the accounts it has access to. It will automatically include any accounts added in the future.
- You can select specific accounts. Select **Just these accounts** and add the relevant accounts from the dropdown list.

##### Set threshold and severity levels

Set your threshold and severity levels.

In the _Trigger if..._ section, click **\+ Add a threshold** to set up to 5 threshold conditions, each with its own severity tag.

You can set the trigger condition time frame between 5 minutes and up to 24 hours (1 day). To set a trigger condition longer than 24 hours, use [Logz.io’s API](https://docs.logz.io/api/#operation/createAlert) to create your alert.

![Alert trigger thresholds](https://dytvr9ot2sszz.cloudfront.net/logz-docs/alerts/alerts--trigger-settings_aug2021.png)

##### Set alert schedule

You can use the scheduling mechanism to manage the trigger condition frequency.

Scheduling defines the frequency and the time frame for the alerts. To define a schedule, select **On Schedule** and use a [cron expression](https://www.freeformatter.com/cron-expression-generator-quartz.html) to specify when to trigger the alert.

The cron expression can only be set in increments rounded to the nearest minute.

![Schedule alert screen](https://dytvr9ot2sszz.cloudfront.net/logz-docs/alerts/schedule-alert.png)

For example, you can apply the following schedule to your alerts:

| Cron expression                       | Alert trigger schedule                                   |
| ------------------------------------- | -------------------------------------------------------- |
| 0 0/10 \* ? \* \* \*                  | Every 10 minutes                                         |
| 0 0 0/1 ? \* \* \*                    | Rounded to the nearest hour                              |
| 0 \* 8-17 ? \* MON,TUE,WED,THU,FRI \* | Every minute between 8 am to 5 pm, Monday through Friday |
| 0 5 0 ? \* \* \*                      | Every day at exactly 12:05 am                            |

By default, trigger conditions run approximately every minute. If there’s a lag, the alert is not checked until all data is received. In addition, once an alert has met its condition and is triggered, it won’t be checked again for the remainder of the alert trigger condition time range.

##### _(Optional)_ Set notification details

###### Description and tags

![Alert description and tags](https://dytvr9ot2sszz.cloudfront.net/logz-docs/alerts/description-and-tags_aug2021.png)

The **Description** is visible on the _Alert definitions_ page, and it’s part of the emails and Slack messages sent when the alert is triggered.

We recommend making your description helpful to recipients, like telling them how to fix the issues that led to the alert.

The **Tags** are useful for filtering. For example, they can be used to create filtered visualizations and dashboards or to filter the _Alert definitions_ page.

###### Who to send it to

![Recipients and wait between notifications](https://dytvr9ot2sszz.cloudfront.net/logz-docs/alerts/recipients-and-wait_aug2021.png)

Choose notification endpoints if you want to send no
