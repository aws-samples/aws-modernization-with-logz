---
title: "AWS VPC Setup"
chapter: true
weight: 13
---

## Setting up your AWS VPC (only if it's missing)

{{% notice warning %}}
You are responsible for the cost of the AWS services used while running this workshop in your AWS account.
{{% /notice %}}

For this workshop we will be utilizing eu-central-1 but you can utilize which ever region you would like. Head over to [https://eu-central-1.console.aws.amazon.com/vpc/home?region=eu-central-1#vpcs:](https://eu-central-1.console.aws.amazon.com/vpc/home?region=eu-central-1#vpcs:) to make sure you have a VPC listed there. If it's empty, then let's create one.

The easiest way to do it is to go to:
[https://eu-central-1.console.aws.amazon.com/vpc/home?region=eu-central-1#CreateVpc:createMode=vpcWithResources](https://eu-central-1.console.aws.amazon.com/vpc/home?region=eu-central-1#CreateVpc:createMode=vpcWithResources)
and fill in a couple of values. At the end you should have a VPC with 2 **AZ's**.

- VPC settings: VPC and more
- Name tag auto-generation: logz-io-workshop
- Auto-generate: checked
- Number of Availability Zones (AZs): 2
- NAT gateways ($): In 1 AZ

![VPC 1](/images/prerequisites/aws-vpc-1.png)
![VPC 2](/images/prerequisites/aws-vpc-2.png)

## Preview of what you are creating.

The VPC names might differ but the picture should look very similar.
![VPC Preview](/images/prerequisites/aws-vpc-preview.png)

![Logz.io](/images/logz-io-badge.png)
