Connect AWS Account to Lightlytics Terraform Module
===================================================
A terraform module for connecting AWS account to [Lightlytics](https://www.lightlytics.com/) and enabling [real-time events](https://www.lightlytics.com/events) within the account's region.


Prerequisites
-------------
- A Lightlytics account
- Terraform CLI
- AWS credentials configured for use with Terraform


Requirements
------------
- Must be used with Lightlytics Terraform [provider](https://github.com/lightlytics-terraform/lightlytics-provider.git) module


Usage
-----
```hcl
module "lightlytics" {
  providers = {
    aws = aws.us-east-1
  }
  source = "github.com/lightlytics-terraform/lightlytics-module/basic_integration"
  environment                    = "<Your_Organization_Name_From_The_URL>" 
  aws_account_id                 = "lightlytics_account.<Lightlytics_provider_resource>.aws_account_id"
  Lightlytics_internal_accountID = "lightlytics_account.<Lightlytics_provider_resource>.id"
  lightlytics_account_externalID = "lightlytics_account.<Lightlytics_provider_resource>.external_id"
  lightlytics_auth_token         = "lightlytics_account.<Lightlytics_provider_resource>.account_auth_token"
}

module "lightlytics-collection-us-east-1" {
  source = "github.com/lightlytics-terraform/lightlytics-module/collection_lambda"
  providers = {
    aws = aws.us-east-1
  }
  environment                    = "<Your_Organization_Name_From_The_URL>"
  aws_account_id                 = "lightlytics_account.<Lightlytics_provider_resource>.aws_account_id"
  lightlytics_collection_token   = "lightlytics_account.<Lightlytics_provider_resource>.lightlytics_collection_token"
  lightlytics_cloudwatch_role    = module.lightlytics.lightlytics_cloudwatch_role
}
```


Inputs
------
| Variable Name                     | Description                             | Notes                                                                        | Type     | Required? | Default |
| :-------------------------------- | :-------------------------------------  | :----------------------------------------------------------------------------|:---------|:--------- |:--------|
| environment                       | Your organization name from the URL     | Only the name, e.g mike from `https://mike.lightlytics.com`                  | `string` | Yes       | n/a     || `string` | Yes       | n/a     |
| aws_account_id                    | Your AWS account ID                     |                                                                              | `string` | Yes       | n/a     |
| Lightlytics_internal_accountID    | Lightlytics internal account ID         |                                                                              | `string` | Yes       | n/a     |
| lightlytics_account_externalID    | Lightlytics external account ID         |                                                                              | `string` | Yes       | n/a     |
| lightlytics_auth_token            | Lightlytics authentocation token        |                                                                              | `string` | Yes       | n/a     |


Run
---
This Terraform module will do the following:

On apply:
- Create AWS IAM Policy
- Create AWS IAM Role
- Create AWS Lambda Function
- Create AWS IAM Role for Lambda Function
- Trigger Lambda Function

On destroy:
- Delete all above resources including disconnecting the AWS account from Lightlytics platform


Lightlytics Featured Products
================================

[Connect AWS Account to Lightlytics Terraform Module (basic_integration)](https://github.com/lightlytics-terraform/lightlytics-module/tree/main/basic_integration#lightlytics-terraform-module---basic-integration)
-----------------------------------------------------------------------
- This module connects your AWS account to [Lightlytics](https://www.lightlytics.com/) and triggers your account initial scan.


[Lightlytics Real-Time Events Collection Terraform Module (collection_lambda)](https://github.com/lightlytics-terraform/lightlytics-module/tree/main/collection_lambda#lightlytics-real-time-events-collection-terraform-module)
----------------------------------------------------------------------------
- This module enables Lightlytics to receive real-time events of your AWS account based on AWS CloudWatch. Integrating with this module will help you track cloud configuration changes with a complete context of who, what, where, and when while providing impact analysis of your cloud environment in real time.


[Lightlytics Network Traffic Activity (Flow Logs) Terraform Module (flowlogs_lambda)](https://github.com/lightlytics-terraform/lightlytics-module/tree/main/flowlogs_lambda#lightlytics-network-traffic-activity-flow-logs-terraform-module)
-----------------------------------------------------------------------------------
- This module is in charge of creating VPC flow logs with a custom format and sending it over to Lightlytics. Integrating with this module will help you analyze and troubleshoot network traffic activity and quickly identify issues in your cloud environments using enriched and detailed logs across VPCs, services, clusters, workloads, network components, and much more.


[Lightlytics Identity Activity (IAM Logs) Terraform Module (iam_activity_lambda)](https://github.com/lightlytics-terraform/lightlytics-module/tree/main/iam_activity_lambda#lightlytics-identity-activity-iam-logs-terraform-module)
-------------------------------------------------------------------------------
- This module creates and collects CloudTrail logs to provide visibility of how identities are being assumed and used across your AWS environment. Integrating with this module will help you monitor and analyze any identity (Identity Access Management - IAM) activity in your account with automatic correlation to your cloud resources.


Lightlytics Cost
----------------
- Coming soon...


## Providers
| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.70.0 |


Community
---------
- Join Lightlytics community on [Slack](https://join.slack.com/t/lightlyticscommunity/shared_invite/zt-1f7dk2yo7-xBTOU_o4tOnAjoFxfHVF8Q)


Getting Help
------------
Please use these resources for getting help:
- [Slack](https://join.slack.com/t/lightlyticscommunity/shared_invite/zt-1f7dk2yo7-xBTOU_o4tOnAjoFxfHVF8Q)
- Email: support@lightlytics.com
