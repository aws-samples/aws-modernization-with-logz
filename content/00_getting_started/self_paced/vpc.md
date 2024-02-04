---
title: "AWS VPC Setup"
chapter: false
weight: 13
---

Head over to the [VPC Console](https://eu-central-1.console.aws.amazon.com/vpc/home?region=eu-central-1#vpcs:) to make sure you have a VPC listed there. You can use a default VPC. If it doesn't exist, then let's create one.

The easiest way to do it is to follow 
[this link](https://eu-central-1.console.aws.amazon.com/vpc/home?region=eu-central-1#CreateVpc:createMode=vpcWithResources)
and fill in a couple of values. At the end you should have a VPC with 2 **AZ's**.

- VPC settings: **VPC and more**
- Name tag auto-generation: **`logz-io-workshop`**
- Auto-generate: **checked**
- Number of Availability Zones (AZs): **2**
- NAT gateways ($): **In 1 AZ**

![VPC 1](/images/prerequisites/aws-vpc-1.png)
![VPC 2](/images/prerequisites/aws-vpc-2.png)

## Preview of what you are creating.

The VPC names might differ but the picture should look very similar.
![VPC Preview](/images/prerequisites/aws-vpc-preview.png)

![Logz.io](/images/logz-io-badge.png)
