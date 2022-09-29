Lightlytics terraform module - collection lambda
===========


Module Input Variables
----------------------

- `environment`                       = Lightlytics environment name
- `aws_account_id`                    = AWS account ID
- `lightlytics_collection_token`      = Lightlytics collection token
- `lightlytics_cloudwatch_role`       = Cloud watch role arn


Usage
-----

```hcl
module "lightlytics-collection" {
  source = "github.com/lightlytics-terraform/lightlytics-module/collection_lambda"
  environment                                  = "<Lightlytics_env>"
  aws_account_id                               = "lightlytics_account.<Lightlytics_provider_resource>.aws_account_id"
  lightlytics_collection_token                 = "lightlytics_account.<Lightlytics_provider_resource>.lightlytics_collection_token"
  lightlytics_cloudwatch_role                  = module.lightlytics.lightlytics_cloudwatch_role
}
```


Adding AWS provider
-----

- MUST USE THE LIGHTLYTICS PROVIDER FOR CREATING THE NEW INTEGRATION ACCOUNT:
  https://github.com/lightlytics-terraform/lightlytics-provider.git
  - Must create basic_integration module with the var -> "enable_cloudtrail=true"


- The following vars are required:
  - variable "environment" {}
  - variable "aws_account_id" {}
  - variable "lightlytics_collection_token" {}
  - variable "lightlytics_cloudwatch_role" {}
