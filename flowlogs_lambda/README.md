Lightlytics terraform module - flowlogs lambda
===========


Module Input Variables
----------------------

- `environment`                       = Lightlytics environment name
- `lightlytics_collection_token`      = Lightlytics collection token
- `lightlytics_flowlogs_role`         = Flowlogs role arn
- `vpc_flowlogs_ids`                  = List vpc ids for creating vpc flowlogs
- `flowlogs_bucket_name`              = Optional (Must enter if var "create_new_flowlogs_bucket" set to false)
- `create_new_flowlogs_bucket`        = Optional (Default to False)
- `s3_force_destroy`                  = Optional (Default to True)


Usage
-----

```hcl
module "flow-logs-us-east-1" {
  source = "github.com/lightlytics-terraform/lightlytics-module/flowlogs_lambda"
  environment                                  = "<Lightlytics_env>"
  lightlytics_collection_token                 = "lightlytics_account.<Lightlytics_provider_resource>.lightlytics_collection_token"
  vpc_flowlogs_ids                             = [""]
  lightlytics_flowlogs_role                    = module.lightlytics-module.lightlytics_flowlogs_role
  flowlogs_bucket_name                         = ""
}
```


Adding AWS provider
-----

- MUST USE THE LIGHTLYTICS PROVIDER FOR CREATING THE NEW INTEGRATION ACCOUNT:
  https://github.com/lightlytics-terraform/lightlytics-provider.git
  - Must create basic_integration module with the var -> "collect_collection_enabled=true"


- The following vars are required:
  - variable "environment" {}
  - variable "lightlytics_collection_token" {}
  - variable "lightlytics_flowlogs_role" {}
  
- The following vars are optional:
  - variable "s3_force_destroy" {}
  - variable "vpc_flowlogs_ids" {}
  - variable "flowlogs_bucket_name" {}
  - variable "create_new_flowlogs_bucket" {}
