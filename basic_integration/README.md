Lightlytics Terraform Module - basic integration
===========
This module is in charge of connecting your AWS account to your Lightlytics workspace, and triggering your cloud account initial scan.
===========


Inputs Variables
-----------------
| Variable Name                     | Description                             | Notes                                                                        | Required? | Default |
| :-------------------------------- | :-------------------------------------  | :----------------------------------------------------------------------------|:----------|:--------|
| environment                       | Your environment URL including https:// | e.g "https://mike.lightlytics.com"                                           | Yes       | `null`  |
| aws_account_id                    | Your AWS account ID                     |                                                                              | Yes       | `null`  |
| Lightlytics_internal_accountID    | Lightlytics internal id                 |                                                                              | Yes       | `null`  |
| lightlytics_account_externalID    | Lightlytics external id                 |                                                                              | Yes       | `null`  |
| lightlytics_auth_token            | Lightlytics auth token                  |                                                                              | Yes       | `null`  | 
| create_cloud_trail                |                                         |                                                                              | No        | `false` |
| enable_flowlogs                   |                                         |                                                                              | No        | `true`  |
| enable_cloudtrail                 |                                         |                                                                              | No        | `true`  |
| s3_force_destroy                  |                                         |                                                                              | No        | `true`  |


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
