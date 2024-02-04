---
title: "Update IAM settings for Cloud9"
chapter: false
weight: 17
---

{{% notice info %}}
Cloud9 normally manages IAM credentials dynamically. This isn't currently compatible with some AWS services authentication, so we will disable it and rely on the IAM role instead.

{{% /notice %}}

- Return to your workspace and click the gear icon (in top right corner), or click to open a new tab and choose "Open Preferences"
- Select **AWS SETTINGS**
- Turn off **AWS managed temporary credentials**
- Close the Preferences tab
  ![c9disableiam](/images/prerequisites/c9disableiam.png)

Let's run the commands below, the following actions will take place as we do that:

:small_blue_diamond: Remove any existing AWS credentials file

:small_blue_diamond: Set the region to work with our desired region

:small_blue_diamond: Validate that our IAM role is valid

```sh
rm -vf ${HOME}/.aws/credentials
export AWS_REGION=$(ec2-metadata -z | awk '{print $2}' | sed 's/[a-z]$//')
echo "export AWS_REGION=${AWS_REGION}" | tee -a ~/.bash_profile
export ACCOUNT_ID=$(aws sts get-caller-identity --output text --query Account)
echo "export ACCOUNT_ID=${ACCOUNT_ID}" | tee -a ~/.bash_profile
aws configure set default.region ${AWS_REGION}
aws sts get-caller-identity --query Arn | grep Logz-io-Workshop-Admin -q && echo "IAM role valid" || echo "IAM role NOT valid"
```

If the IAM role is not valid, <span style="color: red;">**DO NOT PROCEED**</span>. Go back and confirm the steps on this page.
