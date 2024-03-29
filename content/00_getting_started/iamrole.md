---
title: "Create IAM role for Cloud9"
chapter: false
weight: 15
---

{{% notice info %}}
Starting from here, when you see a command to be entered such as below, you will enter these commands into Cloud9 IDE. You can use the **Copy to clipboard** feature (top right corner) to simply copy and paste into Cloud9. In order to paste, you can use Ctrl + V for Windows or Command + V for Mac.
{{% /notice %}}

1. Follow [this deep link to create an IAM role with Administrator access.](https://console.aws.amazon.com/iam/home#/roles$new?step=review&commonUseCase=EC2%2BEC2&selectedUseCase=EC2&policies=arn:aws:iam::aws:policy%2FAdministratorAccess)
2. Confirm that **AWS service** and **EC2** are selected, then click **Next** to view permissions.
3. Confirm that **AdministratorAccess** is checked, then click **Next** to review.
4. Enter **`Logz-io-Workshop-Admin`** for the Name, and select **Create Role**
   ![createrole](/images/prerequisites/createrole.png)
