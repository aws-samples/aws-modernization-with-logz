---
title: "AWS VPC Setup"
chapter: true
weight: 12
---

## Setting up your AWS VPC (only if it's missing)

{{% notice warning %}}
You are responsible for the cost of the AWS services used while running this workshop in your AWS account. We highly recommend you to go to the [request AWS credit page](/030_self_guided_setup/30_request_credit.html) so you can run this workshop without any charge to you.
{{% /notice %}}

For this workshop we will be utilizing us-east-1 but you can utilize which ever reagion you would like. Head over to [https://us-east-1.console.aws.amazon.com/vpc/home?region=us-east-1#vpcs:](https://us-east-1.console.aws.amazon.com/vpc/home?region=us-east-1#vpcs:) make sure that have a VPC listed there if it's empty then let's create one.

The easiest way is to go to:
[https://us-east-1.console.aws.amazon.com/vpc/home?region=us-east-1#CreateVpc:createMode=vpcWithResources](https://us-east-1.console.aws.amazon.com/vpc/home?region=us-east-1#CreateVpc:createMode=vpcWithResources)
Fill in a couple of values at the end you should have a VPC with 3 **AZ's**.

- VPC settings: VPC and more
- Name tag auto-generation: logz-io-workshop
- Auto-generate: []checked
- Number of Availability Zones (AZs): 3
- NAT gateways ($): In 1 AZ

![VPC 1](/images/prerequisites/aws-vpc-1.png)
![VPC 2](/images/prerequisites/aws-vpc-2.png)

## Preview of what you are creating.

The VPC names might differ but the picture should look very similar.
![VPC Preview](/images/prerequisites/aws-vpc-preview.png)

![Logz.io](/images/logz-io-badge.png)
