---
title: "Attach IAM role to Cloud9"
chapter: false
weight: 16
---

1. Follow [this deep link to find your Cloud9 EC2 instance](https://console.aws.amazon.com/ec2/v2/home?#Instances:tag:Name=aws-cloud9-Logz-io-Workshop;sort=desc:launchTime)
2. Select the instance, then choose **Actions / Security / Modify IAM Role**
   ![c9instancerole](/images/prerequisites/c9instancerole.png)
3. Choose **Logz-io-Workshop-Admin** from the **IAM Role** drop down, and select **Update IAM role**
   ![c9attachrole](/images/prerequisites/c9attachrole.png)
