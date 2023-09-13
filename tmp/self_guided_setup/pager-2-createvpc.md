---
title: "Create an EKS Cluster"
chapter: true
weight: 13
---



{{% notice warning %}}

The examples and sample code provided in this workshop are intended to be consumed as instructional content. These will help you understand how various AWS services can be configured to work with Logz.io.
{{% /notice %}}

## Provision EKS cluster

[Click here to deploy using CloudFormation template](https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create/template?stackName=Workshop-PD-VPC&templateURL=https://modernization-workshop-bucket.s3-us-west-2.amazonaws.com/cfn/master-stacks/vpc-only.yaml)

- Create stack, click **Next**
- Specify stack details, click **Next**
- Configure stack options, click **Next**
- Scroll to bottom section and click **Create stack**

This template deploys an EKS cluster, with a pair of public and private subnets spread
across two Availability Zones. It deploys an internet gateway, with a default
route on the public subnets. It deploys a pair of NAT gateways (one in each AZ), and default routes for them in the private subnets.

This will take a couple of minutes to deploy.

### Manual Setup

In case of acccess restrctions, you can download this Cloudformation template to your local machine, and run it directly from the console.

- Right click this link: [YAML File](https://raw.githubusercontent.com/aws-samples/aws-modernization-with-logz-io/main/static/cfn_files/eks.yaml) and select "Save link As" , maked sure to save the file as a .yml/yaml file.
- Open your AWS Console, From **Services** Select **Cloudformation**
- Click the **Create Stack** button.
- Under **Template soruce** Select **Upload a template file** , Click **Choose file** button and select the yaml file yopu have downloaded.
- Click **Next**.
- Under **Stack Name** input **Workshop-Logz-io**.
- Under **EnvironmentName** input **Workshop**.
- Click **Next** then **Next** again.
- On the final page click **Create stack** to start deploying the template.

<a href="" target="_blank"><img src="/images/logz-io-badge.png"></a>
