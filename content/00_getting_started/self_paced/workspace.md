---
title: "Create a workspace"
chapter: false
weight: 14
---

{{% notice warning %}}
The [Cloud9](https://aws.amazon.com/cloud9/) workspace should be built by an IAM user with Administrator privileges,
not the root account user. Please ensure you are logged in as an IAM user, not the root
account user.
{{% /notice %}}

{{% notice tip %}}
Ad blockers, javascript disablers, and tracking blockers should be disabled for
the cloud9 domain, or connecting to the workspace might be impacted.
Cloud9 requires third-party-cookies. You can whitelist the [specific domains](https://docs.aws.amazon.com/cloud9/latest/user-guide/troubleshooting.html#troubleshooting-env-loading).
{{% /notice %}}

## Launch Cloud9

Create a Cloud9 Environment via [this link](https://eu-central-1.console.aws.amazon.com/cloud9/home?region=eu-central-1)

{{% notice warning %}}
Make sure you are naming your Cloud9 environment **Logz-io-Workshop**.
{{% /notice %}}

- Select **Create environment**
- Name it **`Logz-io-Workshop`**
- Leave the rest to defaults
- You can scroll down, expand **VPC Settings** and select a specific VPC and subnet, or leave it as is
  ![c9networksetting](/images/prerequisites/c9networksetting.png)

- When it comes up, click **Open**, customize the environment by closing the **welcome tab**
  and **lower work area**, and opening a new **terminal** tab in the main work area:
  ![c9before](/images/prerequisites/c9before.png)

- Your workspace should now look like this:
  ![c9after](/images/prerequisites/c9after.png)

- If you don't like the theme, you can change it by selecting **View / Themes / UI Themes** in the Cloud9 workspace menu.
