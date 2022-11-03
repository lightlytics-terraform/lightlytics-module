Lightlytics terraform module - iam_activity lambda
===========


Module Input Variables
----------------------

- `environment`                       = Lightlytics environment name
- `lightlytics_collection_token`      = Lightlytics collection token
- `lightlytics_iam_activity_role`     = IamActivity role arn
- `iam_activity_bucket_name`          = Must enter bucket name


Usage
-----

```hcl
module "iam-activity-logs-us-east-1" {
  source = "github.com/lightlytics-terraform/lightlytics-module/iam_activity_lambda"
  environment                                  = "<Lightlytics_env>"
  lightlytics_collection_token                 = "lightlytics_account.<Lightlytics_provider_resource>.lightlytics_collection_token"
  lightlytics_iam_activity_role                    = module.lightlytics-module.lightlytics_iam_activity_role
  iam_activity_bucket_name                         = ""
}
```


Adding AWS provider
-----

- MUST USE THE LIGHTLYTICS PROVIDER FOR CREATING THE NEW INTEGRATION ACCOUNT:
  https://github.com/lightlytics-terraform/lightlytics-provider.git
  - Must create basic_integration module with the var -> "enable_cloudtrail=true"


- The following vars are required:
  - variable "environment" {}
  - variable "lightlytics_collection_token" {}
  - variable "lightlytics_iam_activity_role" {}
  - variable "iam_activity_bucket_name" {}
