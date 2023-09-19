---
title: "Clean Up"
chapter: true
weight: 300
---

## Workshop Clean-up

{{% notice info %}}
This is nesccery when you run the workshop on you own AWS envrionment.
{{% /notice %}}

### Remove EKS Cluster
In the AWS Console.

1. Go to **Services** -> **EKS** 
2. Select the cluster named "logz-io-o11y-workshop" and click the "Delete" button on the right.
3. Confirm deletion step.

Please allow several minutes for this task to complete.

### Remove Cloud9 Instacne
In the AWS Console.

1. Go to **Services** -> **Cloud9** 
2. Select the workspace named "Logz-io-Workshop" from the list and click the "Delete" button on the right.
3. Confirm deletion step.

Please allow several minutes for this task to complete.

### Remove Cloud9 IAM Role 
In the AWS Console.

1. Go to **Services** -> **IAM** 
2. Select **Roles** from the left hand menu
3. Search for the role named **Logz-io-Workshop-Admin** that we created, and select the checkbox next to it.
4. Click **Delete** button on the right, and confirm deletion step.

Please allow several minutes for this task to complete.

### Remove workshop VPC 
In the AWS Console.

1. Go to **Services** -> **VPC** 
2. Select the VPC named "Logz-io-Workshop" from the list ,click the "Action" button on the right and select "Delete VPC".
3. Confirm deletion step.

Please allow several minutes for this task to complete.

Logz-io-Workshop-Admin