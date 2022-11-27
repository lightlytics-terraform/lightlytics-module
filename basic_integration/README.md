Lightlytics Terraform Module - basic integration
===========
This module is in charge of connecting your AWS account to your Lightlytics workspace, and triggering your cloud account initial scan.
===========


Inputs
------
| Variable Name                     | Description                             | Notes                                                                        | Type     | Required? | Default |
| :-------------------------------- | :-------------------------------------  | :----------------------------------------------------------------------------|:---------|:--------- |:--------|
| environment                       | Your environment URL including https:// | e.g "https://mike.lightlytics.com"                                           | `string` | Yes       | `null`  |
| aws_account_id                    | Your AWS account ID                     |                                                                              | `string` | Yes       | `null`  |
| Lightlytics_internal_accountID    | Lightlytics internal id                 |                                                                              | `string` | Yes       | `null`  |
| lightlytics_account_externalID    | Lightlytics external id                 |                                                                              | `string` | Yes       | `null`  |
| lightlytics_auth_token            | Lightlytics auth token                  |                                                                              | `string` | Yes       | `null`  | 
| create_cloud_trail                |                                         |                                                                              | 'bool'   | No        | `false` |
| enable_flowlogs                   |                                         |                                                                              | 'bool'   | No        | `true`  |
| enable_cloudtrail                 |                                         |                                                                              | 'bool'   | No        | `true`  |
| s3_force_destroy                  |                                         |                                                                              | 'bool'   | No        | `true`  |


Usage
-----

```hcl
module "lightlytics" {
  source = "github.com/lightlytics-terraform/lightlytics-module/basic_integration"
  environment                                  = "<Lightlytics_env>"
  aws_account_id                               = "lightlytics_account.<Lightlytics_provider_resource>.aws_account_id"
  Lightlytics_internal_accountID               = "lightlytics_account.<Lightlytics_provider_resource>.id"
  lightlytics_account_externalID               = "lightlytics_account.<Lightlytics_provider_resource>.external_id"
  lightlytics_auth_token                       = "lightlytics_account.<Lightlytics_provider_resource>.account_auth_token"
}
```

Getting Help
-------
We use GitHub issues for tracking bugs and feature requests. Please use these community resources for getting help:
* Join Lightlytics community on [Slack](https://join.slack.com/t/lightlyticscommunity/shared_invite/zt-1f7dk2yo7-xBTOU_o4tOnAjoFxfHVF8Q)
* Contact our support via [Email](support@lightlytics.com).
