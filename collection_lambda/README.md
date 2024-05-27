Stream.Security Real-Time Events Collection Terraform Module
========================================================
This module enables Stream.Security to receive real-time events of your AWS account based on AWS CloudWatch.
Integrating with this module will help you track cloud configuration changes with a complete context of who, what, where, and when
while providing impact analysis of your cloud environment in real time.


Requirements
------------
- Must be used with Stream.Security [provider](https://github.com/lightlytics-terraform/lightlytics-provider.git) module
- Must be used with [basic integration](https://github.com/lightlytics-terraform/lightlytics-module/tree/main/basic_integration) module while adding the following variable: `enable_cloudtrail = true`


Usage
-----

```hcl
module "lightlytics-collection" {
  source = "github.com/lightlytics-terraform/lightlytics-module/collection_lambda"
  environment                                  = "<Your_Organization_Name_From_The_URL"
  cloud_account_id                             = "lightlytics_account.<Lightlytics_provider_resource>.cloud_account_id"
  lightlytics_collection_token                 = "lightlytics_account.<Lightlytics_provider_resource>.lightlytics_collection_token"
  lightlytics_cloudwatch_role                  = module.lightlytics.lightlytics_cloudwatch_role
}
```


Inputs
------
| Variable Name                      | Description                             | Notes                                                                        | Type     | Required? | Default |
|:-----------------------------------| :-------------------------------------  | :----------------------------------------------------------------------------|:---------|:--------- |:--------|
| environment                        | Your organization name from the URL     | Only the name, e.g mike from `https://mike.streamsec.io`                  | `string` | Yes       | n/a     || `string` | Yes       | n/a     |
| cloud_account_id                   | Your Cloud Provider account ID          |                                                                              | `string` | Yes       | n/a     |
| lightlytics_collection_token       | Stream.Security collection token            |                                                                              | `string` | Yes       | n/a     |
| lightlytics_cloudwatch_role        | Stream.Security CloudWatch role arn          |                                                                              | `string` | Yes       | n/a     |


Run
---
This Terraform module will do the following:

On apply:
- Create AWS IAM Policy
- Create AWS IAM Role
- Create AWS Lambda Function
- Create AWS IAM Role for Lambda Function
- CloudWatch Event Rules

On destroy:
- Delete all above resources


Documentation
-------------
If you're new to Stream.Security and want to get started, feel free to [contact us](https://www.stream.security/contact-us) or checkout our [documentation](https://docs.streamsec.io/) website.


Community
---------
- Comming soon...


Getting Help
------------
Please use these resources for getting help:
- Email: support@stream.security
