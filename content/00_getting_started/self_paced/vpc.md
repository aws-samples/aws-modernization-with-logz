---
title: "AWS VPC Setup"
chapter: false
weight: 13
---

Head over to the [VPC Console](https://console.aws.amazon.com/vpc/home) to make sure you have a VPC listed there. You can use a default VPC. If it doesn't exist, then let's create one.

The easiest way to do it is to follow 
[this link](https://console.aws.amazon.com/vpcconsole/home?CreateVpc:createMode=vpcWithResources&region=us-east-1#CreateVpc:createMode=vpcWithResources)
and fill in a couple of values. At the end you should have a VPC with 2 **AZ's**.

- VPC settings: **VPC and more**
- Name tag auto-generation: **`logz-io-workshop`**
- Auto-generate: **checked**
- Number of Availability Zones (AZs): **2**
- NAT gateways ($): **In 1 AZ**

![VPC 1](/images/prerequisites/aws-vpc-1.png)
![VPC 2](/images/prerequisites/aws-vpc-2.png)

### Preview of what you are creating.

The VPC names might differ but the picture should look very similar.
![VPC Preview](/images/prerequisites/aws-vpc-preview.png)

### Post-creation adjustments

When the **CreateVPC workflow** finishes its job, click the **View VPC** button.

Choose one of the public subnets and click the **open in new window** icon.
![VPC Subnets](/images/prerequisites/aws-vpc-subnets.png)

In the upper right part select **Actions** -> **Edit subnet settings**.
![VPC Public Subnet](/images/prerequisites/aws-vpc-public-subnet.png)

Check the **Enable auto-assign public IPv4 address** box and close the tab.
![VPC Auto-assign IP](/images/prerequisites/aws-vpc-auto-assign.png)