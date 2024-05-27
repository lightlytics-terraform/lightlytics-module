Stream.Security Terraform Module - Basic Integration
===========
This module is in charge of connecting your AWS account to your Stream.Security workspace, and triggering your cloud account initial scan.


Requirements
------------
- Must be used with Stream.Security [provider](https://github.com/lightlytics-terraform/lightlytics-provider.git)


Usage
-----
```hcl
module "lightlytics" {
  source = "github.com/lightlytics-terraform/lightlytics-module/basic_integration"
  environment                                  = "<Your_Organization_Name_From_The_URL"
  cloud_account_id                             = "lightlytics_account.<Lightlytics_provider_resource>.cloud_account_id"
  Lightlytics_internal_accountID               = "lightlytics_account.<Lightlytics_provider_resource>.id"
  lightlytics_account_externalID               = "lightlytics_account.<Lightlytics_provider_resource>.external_id"
  lightlytics_auth_token                       = "lightlytics_account.<Lightlytics_provider_resource>.account_auth_token"
}
```

Inputs
------
| Variable Name                      | Description                             									 | Notes                                                       | Type     | Required? | Default |
|:-----------------------------------| :------------------------------------------------------------------------- | :---------------------------------------------------------- |:---------|:--------- |:--------|
| environment                        | Your organization name from the URL     									 | Only the name, e.g mike from `https://mike.streamsec.io` | `string` | Yes       | n/a     |
| cloud_account_id                   | Your Cloud Provider account ID          									 |                                                             | `string` | Yes       | n/a     |
| Lightlytics_internal_accountID     | Stream.Security internal account ID       								     |                                                             | `string` | Yes       | n/a     |
| lightlytics_account_externalID     | Stream.Security external account ID        									 |                                                             | `string` | Yes       | n/a     |
| lightlytics_auth_token             | Stream.Security authentocation token        									 |                                                             | `string` | Yes       | n/a     | 
| create_cloud_trail                 |                                      									     |                                                             | `bool`   | No        | `false` |
| enable_cloudtrail                  |                                     									     |															   | `bool`   | No        | `true`  |
| enable_flowlogs                    |                                									         |															   | `bool`   | No        | `true`  |
| enable_iam_activity                |                                        									 |															   | `bool`   | No        | `true`  |
| s3_force_destroy                   |                                    									     |															   | `bool`   | No        | `true`  |


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
- Delete all above resources including disconnecting the AWS account from Stream.Security platform


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