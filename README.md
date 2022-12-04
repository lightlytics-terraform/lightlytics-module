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
- Must be used with Lightlytics [provider](https://github.com/lightlytics-terraform/lightlytics-provider.git) module


Usage
-----
```hcl
module "lightlytics" {
  providers = {
    aws = aws.us-east-1
  }
  source = "github.com/lightlytics-terraform/lightlytics-module/basic_integration"
  environment                                  = "<https://<env_name>.lightlytics.com>"
  aws_account_id                               = "lightlytics_account.<Lightlytics_provider_resource>.aws_account_id"
  Lightlytics_internal_accountID               = "lightlytics_account.<Lightlytics_provider_resource>.id"
  lightlytics_account_externalID               = "lightlytics_account.<Lightlytics_provider_resource>.external_id"
  lightlytics_auth_token                       = "lightlytics_account.<Lightlytics_provider_resource>.account_auth_token"
}

module "lightlytics-collection-us-east-1" {
  source = "github.com/lightlytics-terraform/lightlytics-module/collection_lambda"
  providers = {
    aws = aws.us-east-1
  }
  environment                                  = "<https://<env_name>.lightlytics.com>"
  aws_account_id                               = "lightlytics_account.<Lightlytics_provider_resource>.aws_account_id"
  lightlytics_collection_token                 = "lightlytics_account.<Lightlytics_provider_resource>.lightlytics_collection_token"
  lightlytics_cloudwatch_role                  = module.lightlytics.lightlytics_cloudwatch_role
}
```


Inputs
------
| Variable Name                     | Description                             | Notes                                                                        | Type     | Required? | Default |
| :-------------------------------- | :-------------------------------------  | :----------------------------------------------------------------------------|:---------|:--------- |:--------|
| environment                       | Your environment URL including https:// | e.g `https://org.lightlytics.com`                                           | `string` | Yes       | n/a     |
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


## Feature notes


basic_integration
-----

- Create cloud watch


collection_lambda
-----

- Create collection lambda


flowlogs_lambda
-----

- Create flowlogs lambda

cloudwatch_templates
-----

- Cloudwatch rules templates.



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
