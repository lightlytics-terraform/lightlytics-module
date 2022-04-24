Lightlytics terraform module - basic integration
===========


Module Input Variables
----------------------

- `environment`                       = Lightlytics environment name
- `aws_account_id`                    = AWS account ID
- `Lightlytics_internal_accountID`    = Lightlytics external id
- `lightlytics_account_externalID`    = Lightlytics external id
- `lightlytics_auth_token`            = Lightlytics auth token
- `create_cloud_trail`                = Optional (Default to False)
- `collect_flow_logs_enabled`         = Optional (Default to True)
- `collect_collection_enabled`        = Optional (Default to True)
- `s3_force_destroy`                  = Optional (Default to True)


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


Adding AWS provider
-----

- MUST USE THE LIGHTLYTICS PROVIDER FOR CREATING THE NEW INTEGRATION ACCOUNT:
  https://github.com/lightlytics-terraform/lightlytics-provider.git

- The following vars are required:
  - variable "environment" {}
  - variable "aws_account_id" {}
  - variable "Lightlytics_internal_accountID" {}
  - variable "lightlytics_account_externalID" {}
  - variable "lightlytics_auth_token" {}
  
  
- The following vars are optional:
  - variable "s3_force_destroy" {}
  - variable "collect_flow_logs_enabled" {}
  - variable "collect_collection_enabled" {}
  - variable "create_cloud_trail" {}
